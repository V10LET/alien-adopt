class OwnersController < ApplicationController

# only for debugging
  def index
    @owners = Owner.all
  end
  
  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owners_params)
    if @owner.valid?
      @owner.save
      redirect_to owner_path(@owner)
    else
      flash[:errors] = @owner.errors.full_messages
      redirect_to new_owner_path
    end
  end

private

  def owners_params
    params.require(:owner).permit(:name, :bio, :planet_id, :email, :therapy)
  end
end
