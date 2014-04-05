LearnRails::Application.routes.draw do
  root to: 'visitors#new'
#  get "pages/*id", to: 'high_voltage/pages#show' # unnecessary, high_voltage inserts this route by default
  resources :contacts, only: [:new, :create]
end
