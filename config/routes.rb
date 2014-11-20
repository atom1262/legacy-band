Rails.application.routes.draw do

  root 'homes#show'

  resources :gigs, only: [:new, :create]

end
