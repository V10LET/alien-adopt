class AliensController < ApplicationController
  def index
    @aliens = Alien.all
  end

  def show
    @alien = Alien.find(params[:id])
  end

  def new
    @alien = Alien.new
  end

  def create
    @alien = Alien.new(aliens_params)
    byebug
    if @alien.valid?
      @alien.save
      redirect_to alien_path(@alien)
    else
      flash[:errors] = @alien.errors.full_messages
      redirect_to new_alien_path
    end
  end

  def edit
    @alien = Alien.find(params[:id])
  end

  def update
    @alien = Alien.find(params[:id])
    @alien.update(aliens_params)
    redirect_to "/aliens/#{@alien.id}"
  end

  private

  def aliens_params
    params.require(:alien).permit(:name, :bio, :planet_id, :toy_id, :owner_id, :therapy)
  end
end
