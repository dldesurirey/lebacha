class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin!

  prepend_view_path Rails.root.join("frontend")
end
