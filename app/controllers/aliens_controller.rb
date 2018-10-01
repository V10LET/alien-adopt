class AliensController < ApplicationController
  def index
    @aliens = Alien.all
  end

  def show
    @alien = Alien.find(params[:id])
  end

  def edit
  end

  def new
    @alien = Alien.new
  end

  def create
    @alien = Alien.create(aliens_params)
  end

  private

  def aliens_params
    
  end
end
