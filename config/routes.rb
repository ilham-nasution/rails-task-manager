# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :registrations, only: :create
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'

  defaults format: :json do
    get '/user/:user_id/tasks', to: 'tasks#index'
    post '/user/:user_id/tasks', to: 'tasks#create'
    patch 'tasks/:id', to: 'tasks#update'
    delete 'tasks/:id', to: 'tasks#destroy'
  end
end
