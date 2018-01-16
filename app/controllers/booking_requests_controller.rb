class BookingRequestsController < ApplicationController
  skip_before_action :authenticate_admin!, only: :create

  def index
    @booking_requests = BookingRequest.all
  end

  def create
    @booking_request = BookingRequest.new(request_params)
    if @booking_request.save
      redirect_to root_path, notice: "Message envoyé 👌"
    else
      @sections = Section.all
      @photos = @sections.collect(&:photos).flatten
      @testimonials = Testimonial.all
      render 'pages/home'
    end
  end

  def destroy
    @booking_request = BookingRequest.find(params[:id])
    @booking_request.destroy
    redirect_to booking_requests_path, notice: "Demande d'information supprimée 😱"
  end

  private

  def request_params
    params.require(:booking_request).permit(
      :email, :phone, :children, :adults, :start_date, :end_date, :message, :captcha
    )
  end
end
