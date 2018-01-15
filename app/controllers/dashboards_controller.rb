class DashboardsController < ApplicationController
  def index
    @last_requests = BookingRequest.last(5)
    @last_testimonials = Testimonial.first(5)
    @recent_sections = Section.by_update.first(5)
  end
end
