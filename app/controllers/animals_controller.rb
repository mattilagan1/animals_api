class AnimalsController < ApplicationController
  def index
    animals = Animal.all

    render json: animals
  end

  def show
    animal = Animal.find(params[:id])

    render json: animal
  end

  def create
    animal = Animal.create(
      species: params[:species],
      age: params[:age],
      name: params[:name]
    )

    render json: animal
  end

  def update
    animal = Animal.find(params[:id])
    
    animal.update(
      species: params[:species] || animal.species,
      age: params[:age] || animal.age,
      name: params[:name] || animal.name
    )
    
    render json: animal
  end
    
  def destroy
    animal = Animal.find(params[:id])
    
    animal.destroy

    render json: { message: "animal deleted..." }
  end
end
