class AddCaptchaToBookingRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_requests, :captcha, :integer
  end
end
