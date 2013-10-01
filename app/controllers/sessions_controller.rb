class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])

		if user && user.authenticate(params[:password])
			session[:user] = user.id
			redirect_to projects_path, :notice => "Logged In"
		else
			flash.now.alert = "Email or Password was invalid"
			render :new
		end
	end

	def destroy
		session[:user] = nil
		redirect_to projects_path, :notice => "Logged Out"
	end

end
