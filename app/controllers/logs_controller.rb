class LogsController < ApplicationController
	before_action :set_goal, only: [:new, :create]

	def new
		@hide_navbar = true
		@log = Log.new
	end

	def create
		@hide_navbar = true
		@log = Log.new(log_params)
		@log.goal = @goal
		if @log.save
			redirect_to goal_path(@goal), notice: 'New activity logged successfully'
		else
			render :new
		end
	end

	private

	def log_params
		params.require(:log).permit(:date, :quantity)
	end

	def set_goal
		@goal = Goal.find(params[:goal_id])
	end
end
