class GoalsController < ApplicationController
	def index
		@goals = Goal.where(user: current_user)
	end

	def show
	end

	def new
	end

	def create	
	end
end
