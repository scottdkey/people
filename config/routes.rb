# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'persons/index'
  # get 'persons/show'
  # get 'persons/new'

  resources :persons
  root 'persons#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
