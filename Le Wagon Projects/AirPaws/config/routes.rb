Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/story', to: 'pages#story'
  resources :puppies do
    resources :reviews
    resources :bookings
  end
  resources :users do
    resources :reviews
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
