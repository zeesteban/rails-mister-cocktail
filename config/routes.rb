Rails.application.routes.draw do

  root to: 'cocktails#home'

  resources :cocktails do

  resources :doses, only: [:new, :create]

  end

  resources :doses, only: [:destroy]

  mount Attachinary::Engine => "/attachinary"

end
