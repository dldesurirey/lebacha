class BookingMailerPreview < ActionMailer::Preview
  # localhost:5000/rails/mailers/booking_mailer/booking_request
  def booking_request
    request = BookingRequest.first
    BookingMailer.new_request(request)
  end
end
