class DogsController < ApplicationController

    def new
        @dogs = Dog.new
    end

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def edit
        @dog = dog.find(params[:id])
    end

    def update
        @dog = Dog.update(dog_params)
        redirect_to dog_path(@dog)
    end

    private
    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
