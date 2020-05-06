class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # debugger
    if user && user.authenticate(params[:session][:password])
      log_in user
      current_user
      redirect_to user
    else
# Create an error message.
      flash.now[:danger] = 'Invalid email or password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
