class ApplicationController < ActionController::Base

  def current_user
    Parse::User.session(session[:current_user]) if session[:current_user]
  end
end
