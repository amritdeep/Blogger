class AuthorSessionsController < ApplicationController
	def new
		@author= Author.new		
	end

	def create
		if login(params[:username], params[:password])
			redirect_back_or_to(articles_path, message: 'Logged in successfully.')
		else
			flash.now.alert = "Login Failed."
			render action: new
		end	
	end

	def destroy
		logout
		redirect_to(:author, message: 'Logged Out!')
	end
end
