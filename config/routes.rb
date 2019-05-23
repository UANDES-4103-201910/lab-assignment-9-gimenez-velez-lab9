Rails.application.routes.draw do
  resources :reciepts
  resources :shopping_carts
  resources :ticket_types
  resources :user_tickets
  resources :tickets
  resources :events
  resources :places
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root :to => 'sessions#new'

  post '/login',   to: 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out
  get '/sign_in' => 'registrations#new', as: :registrations
  post '/sign_in' => 'registrations#create', as: :sign_in

  resources :events

  root :to => 'events#index'

  post '/events_created',   to: 'events#create', as: :events_created
  delete '/events_deleted' => 'events#destroy', as: :events_deleted

  resources :tickets

  root :to => 'tickets#index'

  post '/tickets_created',   to: 'tickets#create', as: :tickets_created
  delete '/tickets_deleted' => 'tickets#destroy', as: :tickets_deleted

  resources :ticket_types

  root :to => 'ticket_types#index'

  post '/ticket_types_created',   to: 'ticket_types#create', as: :ticket_types_created
  delete '/ticket_types_deleted' => 'ticket_types#destroy', as: :ticket_types_deleted

  resources :shopping_carts

  root :to => 'shopping_carts#index'

  post '/shopping_carts_created',   to: 'shopping_carts#create', as: :shopping_carts_created
  delete '/shopping_carts_deleted' => 'shopping_carts#destroy', as: :shopping_carts_deleted
end
