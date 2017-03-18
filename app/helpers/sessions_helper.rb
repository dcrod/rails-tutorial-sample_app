module SessionsHelper
  # Logs in a given user
  def log_in(user)
    session[:user_id] = user.id
  end
  # Returns currently logged-in user (if any)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
