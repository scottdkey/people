# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'friends/index'
  # get 'friends/show'
  # get 'friends/new'
  # get 'persons/index'
  # get 'persons/show'
  # get 'persons/new'

  resources :friends
  root 'friends#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
