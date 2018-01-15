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

  validates :title, presence: true, length: { minimum: 2 }

  after_validation :set_position, if: :position_undefined?

  def position_undefined?
    position.nil?
  end

  private

  def set_position
    self.position = Section.count < 1 ? 1 : Section.last.position + 1
  end
end
