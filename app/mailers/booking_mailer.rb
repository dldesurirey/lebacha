class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_request.subject
  #
  def new_request(booking_request)
    @booking_request = booking_request

    mail to: "dldesurirey@gmail.com", subject: "Demande de renseignements"
  end
end
