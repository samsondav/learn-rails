LearnRails::Application.routes.draw do
  root to: 'visitors#new'
  get "pages/*id", to: 'high_voltage/pages#show'
end
