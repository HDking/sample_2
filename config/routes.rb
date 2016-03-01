Rails.application.routes.draw do
  get 'sessions/new'

  
  
  #Static Pages
  root            'static_pages#home'
  get 'help'    =>'static_pages#help'
  get 'about'   =>'static_pages#about'
  get 'contact' =>'static_pages#contact'
  
  #User Management
  get 'signup'  =>'users#new'
  
  #Sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  
end
