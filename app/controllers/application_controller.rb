class ApplicationController < ActionController::Base
  
  def redirect_if_not_logged_in 
    if !session[:owner_id]
      redirect_to login_path
    end
  end

  def current_owner
    Owner.find(session[:owner_id])
  end

  def destroy
    session[:owner_id] = nil
    redirect_to login_path
  end
end
