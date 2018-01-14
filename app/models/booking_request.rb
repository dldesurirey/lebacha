# == Schema Information
#
# Table name: booking_requests
#
#  id         :integer          not null, primary key
#  email      :string
#  start_date :date
#  end_date   :date
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  captcha    :integer
#

class BookingRequest < ApplicationRecord
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  validates :email, presence: true, format: { with: EMAIL_REGEXP }
  validates :captcha, presence: true, numericality: true
  validate :check_captcha

  private

  def check_captcha
    if captcha != 4
      errors.add(:captcha, "Pas exactement...")
    end
  end
end
