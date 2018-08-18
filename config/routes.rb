Rails.application.routes.draw do

  #トップとタスク一覧を同じページにする
  root to: 'tasks#index'
  
  #ルーティング省略形
  resources :tasks
  
end
