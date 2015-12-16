class SessionsController < ApplicationController
	def new
		@user = User.new

	end

	def create
		@user = User.new
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash[:error] = "Invalid email or Password information"
			render 'new'
		end	
	end
	
	def destroy
		sign_out
		redirect_to root_path
	end


end
