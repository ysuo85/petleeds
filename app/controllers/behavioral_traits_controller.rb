class BehavioralTraitsController < ApplicationController
	def create
		behavioral_trait = BehavioralTrait.new
		behavioral_trait.behavioral_trait_description = params[:behavioral_trait_description],
		behavioral_trait.save!
		behavioral_trait_id = behavioral_trait.behavioral_trait_id

		render :status => 200, :json => {:success => true, :behavioral_trait_id => behavioral_trait_id}
	end

	def read
		behavioral_traits = BehavioralTrait.find_by_sql("SELECT * FROM behavioral_traits")
		render :json => behavioral_traits, :except => [:behavioral_trait_id]
	end
end
