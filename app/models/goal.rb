class Goal < ApplicationRecord
  
  # アソシエーションを定義する　goalsはユーザーに属している
  belongs_to :user
  
  
end
