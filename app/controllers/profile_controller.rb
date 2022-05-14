class ProfileController < ApplicationController
  include Secured

  def show
    @user = session[:userinfo]
  end
end
