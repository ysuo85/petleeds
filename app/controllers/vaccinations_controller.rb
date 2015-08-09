class VaccinationsController < ApplicationController
	def create
		vaccination = Vaccination.new
		vaccination.vaccination_description = params[:vaccination_description]
		puts vaccination.vaccination_description
		puts params[:vaccination_description]
		vaccination.save!
		vaccination_id = vaccination.vaccination_id

		render :status => 200, :json => {:success => true, :vaccination_id => vaccination_id}
	end

	def read
		vaccination = Vaccination.find_by_sql("SELECT * FROM vaccinations")
		puts vaccination.to_json
		render :json => vaccination, :except => [:vaccination_id]
	end

end
