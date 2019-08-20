Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landingpage#index'
  get '/items' => 'items#index', as: 'items'
  get '/items/new' => 'items#new', as: 'new_item'
  post '/items' => 'items#create'
  get '/items/:id' => 'items#show' , as: 'item'
  get '/items/:id/edit' => 'items#edit', as: 'edit_item'
  patch '/items/:id' => 'items#update'
  delete '/items/:id' => 'items#destroy'

  get '/users' => 'users#index', as: 'users'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show' , as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'


  get '/items/:item_id/users' => 'users#index', as: 'item_users'
  get '/items/:item_id/users/new' => 'users#create', as: 'new_item_user'
  post '/items/:item_id/users' => 'users#create'
end