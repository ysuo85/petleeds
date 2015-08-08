class SpeciesController < ApplicationController
  def create
    species = Species.new
    id = species.species_id
    species.species_name = params[:species_name]
    species.save!

    render :status => 200, :json => {:success => true, :species_id => id}
  end

  def edit
    Species.update(params[:species_id], :species_name => params[:species_name])
    render :status => 200, :json => {:success => true, :species_id => params[:species_id], :species_name => params[:species_name]}
  end

  def destroy
    @species = Species.find(params[:species_id])
    @species.destroy()
    @species.save
    render :status => 200, :json => {:success => true, :species_id => params[:species_id]}
  end

  def read
    @species = Species.find(params[:species_id])
    render :status => 200, :json => {:success => true, :species_id => params[:species_id], :species_name => @species.species_name}
  end
end
