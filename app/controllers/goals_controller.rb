class GoalsController < ApplicationController
  before_action :set_goal, only: [:show]

  def index() end

  def show() end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    permitted = params.require(:goal).permit(:title, :description)
    permitted.merge(user_id: current_user.id)
  end
end
