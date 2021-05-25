class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  # Responsible for building the page with the form that will submit params to the create
  def new
    @pet = Pet.new
  end

  # Receives the parameters sent from the submission of the form inside the new.html.erb
  def create
    @pet = Pet.new(pet_params)
    
    if @pet.save
      redirect_to pets_path
    else
      render 'new' # this refers to new.html.erb
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet) # same as pet_path(@pet.id)
    else
      render 'edit' # this refers to edit.html.erb
    end
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :location, :species, :found_at)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
