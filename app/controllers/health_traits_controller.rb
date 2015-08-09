class HealthTraitsController < ApplicationController
	def create
		health_trait = HealthTrait.new
		health_trait.health_trait_description = params[:health_trait_description]
		health_trait.save!
		health_trait_id = health_trait.health_trait_id

		render :status => 200, :json => {:success => true, :health_trait_id => health_trait_id}
	end

	def read
		health_traits = HealthTrait.find_by_sql("SELECT * FROM health_traits")
		render :json => health_traits, :except => [:health_trait_id]
	end
end
