Rails.application.routes.draw do

  #トップとタスク一覧を同じページにする
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  #ルーティング、使用するアクションのみ
  resources :tasks, only: [:new, :cretae, :update, :destroy]
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
end
