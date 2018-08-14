Rails.application.routes.draw do
  resources :users
  resources :favorites
  post 'user_token' => 'user_token#create'
  get 'yelp/search'
  get '/user_favorites/:id' =>'favorites#findbyuser'
end
