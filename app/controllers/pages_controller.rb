class PagesController < ApplicationController
  skip_before_action :authenticate_admin!, only: :home

  def home
    @sections = Section.all
    @photos = @sections.collect(&:photos).flatten
  end
end
