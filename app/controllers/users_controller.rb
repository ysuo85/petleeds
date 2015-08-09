class UsersController < ApplicationController

	def show
		user = User.find(params[:user_id])
		render :json => user, :except => [:user_id], :except => [:user_password]
	end

	def new
		user = User.new
	end

	def list
		user = User.find_by_sql("SELECT * FROM users")
		render :json => user, :except => [:user_password]#, :except => [:user_id]
	end

	def create
		User.create(
  		:user_name => params[:user_name],
			:user_role => params[:user_role],
			:user_cell_phone => params[:user_cell_phone],
			:user_eligibility => params[:user_eligibility],
    	:user_email => params[:user_email],
    	:user_first_name => params[:user_first_name],
    	:user_last_name => params[:user_last_name],
			:user_password => params[:user_password]
    )
    render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def update
		#@user = User.find(params[:user_id])
		User.update(
		  params[:user_id],
		  :user_email => params[:user_email],
			:user_cell_phone => params[:user_cellphone],
			:user_first_name => params[:first_name],
			:user_last_name => params[:last_name]
		)

    #if @user.update_attributes(user_params)
		render :status => 200, :json => { :success => true, :info => "Update Successful"}
      # Handle a successful update.
		#	flash[:success] = "Profile updated"
		#	redirect_to @user
    #else
    #  render 'edit'
    #end
	end

	def destroy
		User.destroy(params[:user_id])
		render :status => 200, :json => { :success => true, :info => "Delete Successful"}
	end

	private

	def user_params
		params.require(:user).permit(:user_first_name, :user_last_name, :user_email, :user_password, :user_password_confirmation, :user_cell_phone)
	end
end
