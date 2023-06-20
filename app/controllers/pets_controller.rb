class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end

  def create
    @pet = Pet.new(
      name: params[:name],
      breed: params[:breed],
      sex: params[:sex],
      weight: params[:weight],
      height: params[:height],
      length: params[:length],
      age: params[:age],
      location: params[:location],
      introduction: params[:introduction],
      housebroken: params[:housebroken],
      crate_trained: params[:crate_trained],
      dog_social: params[:dog_social],
      cat_social: params[:cat_social],
      kid_compatibility: params[:kid_compatibility],
      full_description: params[:full_description],
    )
    @pet.save
    render :show
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.update(
      name: params[:name] || @pet.name,
      breed: params[:breed] || @pet.breed,
      sex: params[:sex] || @pet.sex,
      weight: params[:weight] || @pet.weight,
      height: params[:height] || @pet.height,
      length: params[:length] || @pet.length,
      age: params[:age] || @pet.age,
      location: params[:location] || @pet.location,
      introduction: params[:introduction] || @pet.introduction,
      housebroken: params[:housebroken] || @pet.housebroken,
      crate_trained: params[:crate_trained] || @pet.crate_trained,
      dog_social: params[:dog_social] || @pet.dog_social,
      cat_social: params[:cat_social] || @pet.cat_social,
      kid_compatibility: params[:kid_compatibility] || @pet.kid_compatibility,
      full_description: params[:full_description] || @pet.full_description,
    )
    render :show
  end
end
