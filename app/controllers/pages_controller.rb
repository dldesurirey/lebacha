class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: :home

  def home
    @booking_request = BookingRequest.new

    @sections = Section.ordered
    @photos = @sections.collect(&:photos).flatten

    @testimonials = Testimonial.all
  end
end
