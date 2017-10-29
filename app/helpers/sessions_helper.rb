module SessionsHelper
 #define create_session sets user ID on session obj to user.id
  def create_session(user)
    session[:user_id] = user.id
  end

 # #5
  def destroy_session(user)
    session[:user_id] = nil
  end

 # #6
  def current_user
    User.find_by(id: session[:user_id])
  end
end
