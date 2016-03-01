Rails.application.routes.draw do
  resources :users
  
  #Static Pages
  root            'static_pages#home'
  get 'help'    =>'static_pages#help'
  get 'about'   =>'static_pages#about'
  get 'contact' =>'static_pages#contact'
  
  #User Management
  get 'signup'  =>'users#new'
  
end
