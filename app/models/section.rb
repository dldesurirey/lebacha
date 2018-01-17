# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ApplicationRecord
  scope :ordered, -> { order(position: :asc) }
  scope :by_update, -> { order(updated_at: :desc) }

  has_many :features, dependent: :destroy
  has_attachments :photos, accept: [:jpg, :jpeg, :png]

  accepts_nested_attributes_for :features, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true, length: { minimum: 2 }

  after_validation :set_position, if: :position_undefined?
  after_validation :move_positions, if: :position_conflict?

  private

  def position_undefined?
    position.nil?
  end

  def set_position
    self.position = Section.count < 1 ? 1 : Section.ordered.last.position + 1
  end

  def position_conflict?
    Section.where(position: position).any?
  end

  def move_positions
    Section.where("position >= ?", position).each { |s| s.increment!(:position) }
  end
end
