module ApplicationHelper
  def signedin?
    session[:userinfo].present?
  end
end
