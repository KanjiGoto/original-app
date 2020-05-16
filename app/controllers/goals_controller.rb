class GoalsController < ApplicationController
  
  def top
  end
  
  def index
    # アソシエーションを利用しているため、goalsテーブルから呼び出すのと同時にusersテーブルからニックネームを呼び出すというn+1問題が発生している
    # n+1問題を解消するために、includesメソッドを利用して、goalsテーブルのレコードを取得するのと同時にusersテーブルのレコードも同時に取得可能になっている
    @goals = Goal.all.includes(:user)
  end
  
  def new
  end
  
  def create
    Goal.create(goal: goal_params[:goal], reason: goal_params[:reason], future: goal_params[:future], user_id: current_user.id)
  end
  
  def destroy
    goal = Goal.find(params[:id])
    if goal.user_id == current_user.id
      goal.destroy
    end
  end
  
  def edit
    @goal = Goal.find(params[:id])
    
    # if goal.user_id == current.user.id
  end
  
  
  private
  def goal_params
    params.permit(:goal, :reason, :future)
  end
end
