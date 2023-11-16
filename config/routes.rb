# restaurant =>> list of all restaurants, new restaurant, show restaurant with reviews,add restaurant and directed to it
# reviews =>> add new review to restaurant
Rails.application.routes.draw do
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end
end
