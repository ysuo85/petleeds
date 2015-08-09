class AnimalsController < ApplicationController
	def create
    	Animal.create(
        :user_id => params[:user_id],          
        :shelter_id => params[:shelter_id],  
        :species_id => params[:species_id],    
        :breed_id => params[:breed_id],     
        :behavioral_trait_id =>  params[:behavioral_trait_id], 
        :health_trait_id => params[:health_trait_id],     
        :vaccination_id => params[:vaccination_id],     
        :animal_name => params[:animal_name]   
    	)


      render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

  def read
      animals = Animal.find_by_sql("SELECT * FROM animals")

      render :json => animals, :except => [:id]
  end
  def readUserFriendly
      animals = Animal.find_by_sql("SELECT * FROM animals")
#conduct joins
      render :json => animals, :except => [:id]
  end

end


