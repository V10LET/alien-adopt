class AliensController < ApplicationController

  def index
    @aliens = Alien.all
  end

  def show
    @alien = Alien.find(params[:id])
  end

  def update
    @alien = Alien.find(params[:id])
    if @alien.owner_id == session[:owner_id]
      @alien.update_column(:owner_id, nil)
      redirect_to "/owners/#{session[:owner_id]}"
    else
      @alien.update(owner_id: session[:owner_id])
      @alien.owner_id = session[:owner_id]
      redirect_to "/owners/#{session[:owner_id]}"
    end
  end

  def new
    @alien = Alien.new
  end

  def create
    @alien = Alien.new(aliens_params)
    if @alien.valid?
      @alien.save
      redirect_to alien_path(@alien)
    else
      flash[:errors] = @alien.errors.full_messages
      redirect_to new_alien_path
    end
  end

  private

  def aliens_params
    params.require(:alien).permit(:name, :bio, :planet_id, :toy_id, :owner_id, :therapy)
  end

  def update_params
    params.require(:alien).permit(:owner_id)
  end
end
