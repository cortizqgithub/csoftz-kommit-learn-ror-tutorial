class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      remember user
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user # can also be written as redirect_to user_url(user)
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
