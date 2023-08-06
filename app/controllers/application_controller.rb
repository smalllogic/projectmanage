class ApplicationController < ActionController::Base
  helper_method :logged_in?,:current_user
before_action :ensure_login?

  protected
def logged_in?
  session[:user_id]

end
   def current_user
     @current_user ||= User.find_by(id: session[:user_id])
   end

   def ensure_login?
  redirect_to login_path unless session[:user_id] || request.path == login_path
end

end
