class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			flash[:success] = "Welcome to PetLeeds"
			redirect_to @user
		else
			render 'new'
		#User.create(
  		#:user_name => params[:user_name],
			#:user_role => params[:user_role],
			#:user_cell_phone => params[:user_cellphone],
			#:user_eligibility => params[:user_eligibility],
    	#:user_email => params[:user_email],
    	#:user_first_name => params[:user_first_name],
    	#:user_last_name => params[:user_last_name],
			#:user_password => passwordparams[:user_password]
    #)
    #	render :status => 200, :json => { :success => true, :info => "Load Successful"}
	end

	def edit
		@user = User.find(params[:user_id])
		#User.update(
		#  :user_email => params[:user_email],
		#	:user_cell_phone => params[:user_cellphone],
		#	:user_first_name => params[:first_name],
		#	:user_last_name => params[:last_name]
		#)
		#render :status => 200, :json => { :success => true, :info => "Update Successful"}
    if @user.update_attributes(user_params)
      # Handle a successful update.
			flash[:success] = "Profile updated"
			redirect_to @user
    else
      render 'edit'
    end
	end

	def destroy

	end

	private

	def user_params
		params.require(:user).permit(:user_first_name, :user_last_name, :user_email, :user_password, :user_password_confirmation, :user_cell_phone)
	end
end
