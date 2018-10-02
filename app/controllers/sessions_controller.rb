class SessionsController < ApplicationController
  def new
  end

  def create
    @owner = Owner.find_by(email: params[:email])
    if @owner && @owner.authenticate(params[:password])
      session[:owner_id] = @owner.id
      redirect_to @owner
    else
      flash[:error] = 'Oops! That info doesn\'t look correct.'
      redirect_to login_path
    end
  end

  def destroy
  end
end
