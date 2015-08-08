class UsersController < ApplicationController

	def create
		User.create(
      	:user_name => params[:user][:user_username],
				:user_role => params[:user][:user_role],
				:user_cell_phone => params[:user][:user_cellphone],
				:user_eligibility => params[:user][:user_eligibility],
        :user_email => account.email,
        :user_first_name => params[:user][:first_name],
        :user_last_name => params[:user][:last_name]
    )
    render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def update
		User.update(
		    :user_email=> params[:user][:user_email],
				:user_cell_phone => params[:user][:user_cellphone],
				:user_first_name => params[:user][:first_name],
				:user_last_name => params[:user][:last_name]
		)
		render :status => 200, :json => { :success => true, :info => "Update Successful"}
	end

	def destroy

	end
end
