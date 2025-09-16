class PetStoresController < ApplicationController
  def index
    pet_stores = PetStore.all

    render json: pet_stores
  end

  def show
    pet_store = PetStore.find(params[:id])

    render json: pet_store
  end

  def create 
    pet_store = PetStore.new(
      breed: params[:breed],
      age: params[:age],
      name: params[:name]
    )

    if PetStore.save
    render json: pet_store
    else
      render json: pet_store.errors, status: :unprocessable_entity
    end
  end

  def update
    pet_store = PetStore.find(params[:id])
    
    animal.update(
      species: params[:breed] || pet_store.species,
      age: params[:age] || pet_store.age,
      name: params[:name] || pet_store.name
    )
    
    render json: pet_store
  end
    
  def destroy
    pet_store = PetStore.find(params[:id])
    
    pet_store.destroy

    render json: { message: "Pet deleted..." }
  end
end