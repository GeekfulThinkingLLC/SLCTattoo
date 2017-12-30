Rails.application.routes.draw do

  resources :artists
  get 'contact', to: 'pages#contact'

  get 'artists', to: 'pages#artists'

  resources :appointments

  root to: 'pages#home'
end