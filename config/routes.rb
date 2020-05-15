Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のためのルーティングを設定
  get 'goals' => 'goals#index'
  目標を投稿するためのルーティングを設定
  get 'goals/new' => 'goals#new'
  # トップ画面のためのルーティングを設定
  root 'goals#top'
  # サイトの説明の画面を表示させるためのルーティング
  get 'pages/index' => "pages#index"
  
  
end
