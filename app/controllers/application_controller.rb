class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def fetch_user
    @current_user = User.find_by :id => session[:id] if session[:id].present?
    session[:id] = nil unless @current_user.present?
  end

  def check_for_login # checks if somebody is logged in - place in controller where you need to be logged into access
  redirect_to user_session_path unless current_user.present?
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :blog_title, :about_me, :followee_id, :follower_id])
  end
  #
  # private

end
