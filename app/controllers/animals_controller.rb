class AnimalsController < ApplicationController
	def create
    	Animal.create(
        :user_id => params[:user_id],          
        :shelter_id => params[:shelter_id],  
        :shelter_name => params[:shelter_name],
        :species_id => params[:species_id],    
        :species_name => params[:species_name],
        :breed_id => params[:breed_id],     
        :breed_name => params[:breed_name],
        :behavioral_trait_id =>  params[:behavioral_trait_id], 
        :behavioral_trait_description => params[:behavioral_trait_description],
        :health_trait_id => params[:health_trait_id],     
        :health_trait_description => params[:health_trait_description],
        :vaccination_id => params[:vaccination_id],     
        :vaccination_description => params[:vaccination_description],
        :animal_name => params[:animal_name]   
    	)
      render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

  def read
      animals = Animal.find_by_sql("SELECT * FROM animals a INNER JOIN shelters s ON s.shelter_id = a.shelter_id")
      render :json => animals
      ####TRUE CRUD BELOW
      #animals = Animal.find_by_sql("SELECT * FROM animals")

      #render :json => animals
  end


###NOT CRUD
  def readUserFriendly
#      animals = Animal.find_by_sql("SELECT * FROM animals")
#conduct joins
#      render :json => animals, :except => [:id]
  end

end


