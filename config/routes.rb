Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のためのルーティングを設定
  get 'index' => 'goals#index'
  # 目標を投稿するためのルーティングを設定
  get 'goals/new' => 'goals#new'
  # 投稿した目標を保存するためのルーティングを設定
  post 'goals' => 'goals#create'
  # トップ画面のためのルーティングを設定
  root 'goals#top'
  
  # 投稿した目標を削除するルーティングを設定
  delete 'goals/:id' => 'goals#destroy'
  # 投稿した目標の詳細を編集するためのルーティングを設定
  get 'goals/:id' => 'goals#edit'
  
  
  # サイトの説明の画面を表示させるためのルーティング
  get 'pages' => "pages#index"
  
  # マイページを表示させるためのルーティング
  get 'users/:id' => 'users#show'
  

  
  
end
