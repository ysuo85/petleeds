class UsersController < ApplicationController
	def create
      	User.create(
      		:user_id => params[:user][:user_id],
      		:user_name => account.username,
          :user_email => account.email,
          :user_first_name => params[:user][:first_name],
          :user_last_name => params[:user][:last_name],
          :active_indicator => true,
      		#:primary_administrator => true,
      		#:administrator =>  true,
          #:primary_administrator =>true
      	)


        render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def update
		User.update(
		    :user_email=>account.email,
				:user_first_name=>params[:user][:first_name],
				:user_last_name=>params[:user][last_name]
		)
	end

	def destroy

	end
end
