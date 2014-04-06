LearnRails::Application.routes.draw do
  # order is important in routes, first match is taken from top to bottom
  resources :visitors, only: [:new, :create]
  resources :contacts, only: [:new, :create]
  root to: 'visitors#new'
end
