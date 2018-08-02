Rails.application.routes.draw do
  get 'queries/request'
  resources :favorites
  resources :users
end
