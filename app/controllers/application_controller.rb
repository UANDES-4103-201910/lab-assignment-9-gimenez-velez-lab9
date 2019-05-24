class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end

  def current_user

  end

  def is_user_logged_in?
    if current_user then true else redirect_to "http://localhost:3000/users/sign_in" end
  end
end
