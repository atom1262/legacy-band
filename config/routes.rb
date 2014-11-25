Rails.application.routes.draw do

  root 'homes#show'

  resources :gigs, only: [:new, :create]

  resources :members, only: [:new, :create]

end
