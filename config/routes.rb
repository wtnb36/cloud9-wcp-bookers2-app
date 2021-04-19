Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index,]
  post '/users/:id' => 'book#create'
  post '/users' => 'book#create'
  post '/books/:id' => 'book#create'
  
end
