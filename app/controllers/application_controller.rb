class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!  # Ensures a user is logged in
  allow_browser versions: :modern

  # Define an admin authentication method
  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_dashboard_path  # Redirect to Admin Dashboard
    else
      stores_path  # Redirect Normal Users to Stores Page
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :address ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :address ])
  end
end
