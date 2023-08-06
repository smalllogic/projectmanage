Rails.application.routes.draw do

  resources :users do
    put :join_team, on: :member
     delete :leave_team, on: :member
 end


  resources :comments
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :thedeadlines
  resources :tasks do
    resources :comments
  end
  resources :projects
  root 'teams#index'
  resources :teams
  
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
