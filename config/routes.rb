Rails.application.routes.draw do

  get 'toppages/index'
  #トップとタスク一覧を同じページにする
  root to: 'toppages#index'
  
  #ルーティング省略形
  resources :tasks
  
end
