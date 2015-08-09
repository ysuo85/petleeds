class SheltersController < ApplicationController
	def create
		Shelter.create(
      		:shelter_name => params[:shelter_name],
      		#:shelter_instagram_link => params[:user][:organization_name],
      		#:shelter_instagram_link => params[:user][:organization_name],
      		#:shelter_instagram_link => params[:user][:organization_name],
                  :shelter_street_address => params[:shelter_street_address],
                  :shelter_city => params[:shelter_city],
      		:shelter_country => params[:shelter_country],
      		:shelter_postal_code =>  params[:shelter_postal_code],
                  :shelter_latitude => params[:shelter_latitude],
                  :shelter_longitude => params[:shelter_longitude]
      	)

    
        render :status => 200, :json => { :success => true, :info => "Load Successful"}

	end 

	def read

		#@shelters = Shelter.find_by_sql()
	end
end
