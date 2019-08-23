Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landingpage#index'

  get '/users/test' => 'users#test', as: 'test'

  resources :landingpage
  resources :about_us
  resources :devise
  resources :items
  resources :users

end