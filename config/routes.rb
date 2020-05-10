Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のためのルーティングを設定
  get 'goals' => 'goals#index'
  
end
