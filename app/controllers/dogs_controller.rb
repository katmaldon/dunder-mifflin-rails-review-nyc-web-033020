class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.update(dog_params)
  end

  def destroy
    @dog = Dog.destroy
  end

  private

  def dog_params
    require(:name, :breed, :age).permit(:name, :breed, :age)
  end

end
