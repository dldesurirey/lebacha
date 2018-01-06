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
  default_scope { order(position: :asc) }

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
