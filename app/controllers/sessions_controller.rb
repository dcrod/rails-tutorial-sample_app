class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Welcome back to the sample app!"
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination provided'
      render 'new'
    end
  end
  def destroy
    
  end
  
end
