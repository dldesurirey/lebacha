class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_admin!

  prepend_view_path Rails.root.join("frontend")

  def after_sign_in_path_for(resource)
    dashboards_path
  end
end
