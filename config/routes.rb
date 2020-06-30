Rails.application.routes.draw do
  resources :apperances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :apperances, only: [:new, :create]
end
