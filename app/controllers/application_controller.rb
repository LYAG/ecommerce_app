class ApplicationController < ActionController::Base
  helper_method :current_user, :user_signed_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !!current_user
  end
  class ApplicationController < ActionController::Base
    helper_method :current_user, :user_signed_in?

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def user_signed_in?
      !!current_user
    end

    def authenticate_user!
      unless user_signed_in?
        redirect_to login_path, alert: 'You need to sign in or sign up before continuing.'
      end
    end
  end

  def authenticate_user!
    redirect_to login_path unless user_signed_in?
  end
end
