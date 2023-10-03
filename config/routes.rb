# frozen_string_literal: true

Rails.application.routes.draw do
  resources :grain_jars do
    member do
      post 'shake'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
