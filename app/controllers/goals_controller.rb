class GoalsController < ApplicationController
  
  def top
  end
  
  def index
    @goals = Goal.all
  end
  
  def new
  end
  
  def create
    Goal.create(goal: goal_params[:goal], reason: goal_params[:reason], future: goal_params[:future], user_id: current_user.id)
  end
  
  
  private
  def goal_params
    params.permit(:goal, :reason, :future)
  end
end
