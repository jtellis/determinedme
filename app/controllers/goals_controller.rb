class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :destroy]

  def index
    @goals = current_user.goals.roots
  end

  def new
    @goal = Goal.new(new_goal_params)
  end

  def create
    @goal = Goal.create!(goal_params)
    redirect_to @goal
  end

  def destroy
    parent_goal = @goal.parent
    @goal.destroy!
    if parent_goal.nil?
      redirect_to goals_path
    else
      redirect_to parent_goal
    end
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def new_goal_params
    parent_id = params.require(:parent_id)
    parent_id = nil if parent_id == 'root'
    { parent_id: parent_id }.merge(user_id: current_user.id)
  end

  def goal_params
    permitted = params.require(:goal).permit(:title, :description, :parent_id)
    permitted.merge(user_id: current_user.id)
  end
end
