class UsersController < ApplicationController
  
  def show
    @nickname = current_user.nickname
    # アソシエーションを利用した記述に変更
    @goals = current_user.goals
  end
  
end
