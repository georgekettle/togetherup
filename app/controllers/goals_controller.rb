class GoalsController < ApplicationController
	def index
		@goals = Goal.where(user: current_user)
	end

	def show
	end

	def new
		@goal = Goal.new
	end

	def create
		@goal = Goal.new(goal_params)
		@goal.user = current_user
		if @goal.save
			# redirect to dashboard
			redirect_to root_path
		  else
			render :new
		  end
	  end
	  
	#   private

	  def goal_params
		params.require(:goal).permit(:name, :frequency_count, :frequency_interval, :frequency_slack, :end_date, :public, :message_to_self)
	  end
	
end
