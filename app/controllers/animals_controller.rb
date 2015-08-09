class AnimalsController < ApplicationController
	def create
      	Animal.create(
      		:user_id => params[:user_id],
      		:shelter_id => params[:shelter_id],
          :species_id => params[:species_id],
          :breed_id => params[:breed_id],
          :behavioral_trait_id => params[:behavioral_trait_id],
          :health_trait_id => params[:health_trait_id],
					:vaccination_id => params[:vaccination_id],
					:animal_name => params[:animal_name]
      		#:primary_administrator => true,
      		#:administrator =>  true,
          #:primary_administrator =>true
      	)

        render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def read
		@animal = Animal.find(params[:animals][:animal_id])
		@animal.user_name
	end
end
