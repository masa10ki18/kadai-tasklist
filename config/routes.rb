Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  #トップとタスク一覧を同じページにする
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ルーティング省略形
  resources :tasks
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
end
