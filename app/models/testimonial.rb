# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :text
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Testimonial < ApplicationRecord
  default_scope { order(date: :desc) }

  validates :name, presence: true, length: { minimum: 3 }
  validates :content, presence: true, length: { minimum: 3 }
  validates :date, presence: true
end
