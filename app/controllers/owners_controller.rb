class OwnersController < ApplicationController
before_action :redirect_if_not_logged_in

  def index
    @owners = Owner.all
  end

  def show
    if Owner.find_by_id(params[:id].to_s) == nil
      redirect_to login_path
    else
      @owner = Owner.find(params[:id])
      if session[:owner_id] == params[:id].to_i
        @current_owner = current_owner
      end
    end
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owners_params)
    if @owner.valid?
      @owner.save
      session[:owner_id] = @owner.id
      redirect_to owner_path(@owner)
    else
      flash[:errors] = @owner.errors.full_messages
      redirect_to new_owner_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

private

  def owners_params
    params.require(:owner).permit(:name, :bio, :planet_id, :email, :therapy, :password, :password_confirmation)
  end
end
