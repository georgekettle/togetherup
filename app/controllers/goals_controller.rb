class GoalsController < ApplicationController
	def index
		@goals = Goal.where(user: current_user)
	end

	def show
		@hide_navbar = true
		@goal = Goal.find(params[:id])
	end

	def new
		@hide_navbar = true
		@goal = Goal.new
	end

	def create
		@hide_navbar = true
		@goal = Goal.new(goal_params)
		@goal.user = current_user
		if @goal.save
			redirect_to goal_path(@goal), notice: "Goal successfully created"
		else
			render :new
		end
	end
	  
	private

  def goal_params
  	params[:goal][:frequency_interval] = params[:goal][:frequency_interval].to_i if params[:goal][:frequency_interval]
		params.require(:goal).permit(:name, :frequency_count, :frequency_interval, :frequency_slack, :end_date, :public, :message_to_self, :style, :metric_name, :metric_goal)
  end
end
