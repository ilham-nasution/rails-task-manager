# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: :create
  defaults format: :json do
    get '/', to: redirect('/tasks')
    get '/tasks', to: 'tasks#index'
    post 'tasks', to: 'tasks#create'
    patch '/tasks/:id', to: 'tasks#update'
    delete '/tasks/:id', to: 'tasks#destroy'
  end
end
