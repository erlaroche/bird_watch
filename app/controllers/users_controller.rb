class UsersController < ApplicationController
	def index
	end
	def show
		@user = User.find(params[:id])
	end
	def list
		@users = User.find(:all)
	end
end