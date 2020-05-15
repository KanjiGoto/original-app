class GoalsController < ApplicationController
  
  def top
  end
  
  def index
  end
  
  def new
  end
  
  def create
    Goal.create(goal_params)
  end
  
  
  private
  def goal_params
    params.permit(:goal, :reason, :future)
  end
end
