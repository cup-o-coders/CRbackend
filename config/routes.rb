Rails.application.routes.draw do
  get 'yelp/search'
  resources :users do
    resources :favorites
  end
end