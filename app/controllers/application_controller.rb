class ApplicationController < ActionController::Base
  # before_action :fetch_user
  #
  # private
  def fetch_user
    @current_user = User.find_by :id => session[:id] if session[:id].present?
    session[:id] = nil unless @current_user.present?
  end

def check_for_login # checks if somebody is logged in - place in controller where you need to be logged into access
  redirect_to user_session_path unless current_user.present?
end
end
