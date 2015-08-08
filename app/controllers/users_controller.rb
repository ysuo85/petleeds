class UsersController < ApplicationController
	def create
      	User.create(
      		:organization_id => params[:user][:organization_id],
      		:organization_name => params[:user][:organization_name],
      		:user_name => account.username,
            :user_email => account.email,
            :user_first_name => params[:user][:first_name],
            :user_last_name => params[:user][:last_name],
            :active_indicator => true,
      		:primary_administrator => true,
      		:administrator =>  true,
            :primary_administrator =>true
      	)

    
        render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def destroy

	end
end
