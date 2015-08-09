class SpeciesController < ApplicationController
  def create
    species = Species.create(:species_name => params[:species_name])
    render :status => 200, :json => {:success => true, :info => "Load Successful"}
  end

  def edit
    Species.update(params[:species_id], :species_name => params[:species_name])
    render :status => 200, :json => {:success => true, :info => "Load Successful"}
  end

  def destroy
    @species = Species.find(params[:species_id])
    @species.destroy
    @species.save
    render :status => 200, :json => {:success => true, :info => "Load Successful"}
  end

  def read
    @species = Species.find(params[:species_id])
    render :status => 200, :json => {:success => true, :species_id => params[:species_id], :species_name => @species.species_name}
  end
end
