Rails.application.routes.draw do
  get 'yelp/search'
  resources :favorites
  resources :users
end
