class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    oauth_response = request.env['omniauth.auth']
    auth_data = {
      'id' => oauth_response.uid,
      'id_token' => oauth_response.extra.id_token
    }

    user_info = {
      email: oauth_response.info.email,
      first_name: oauth_response.info.first_name,
      last_name: oauth_response.info.last_name,
      picture: oauth_response.info.image
    }

    user = Parse::User.autologin_service(:google, auth_data, body: user_info)
    session[:current_user] = user.session_token
    redirect_to '/'
  end
end