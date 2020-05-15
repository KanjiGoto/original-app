Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のためのルーティングを設定
  get 'goals' => 'goals#index'
  # トップ画面のためのルーティングを設定
  root 'goals#top'
  get 'pages/index' => "pages#index"
  
end
