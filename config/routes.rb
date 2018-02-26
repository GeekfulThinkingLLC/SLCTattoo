Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users
  resources :artists
  get 'contact', to: 'pages#contact'

  get 'artists', to: 'pages#artists'

  get 'redirect', to: 'pages#redirect', as: 'redirect'
  get 'callback', to: 'pages#callback', as: 'callback'
  get 'calendars', to: 'example#calendars', as: 'calendars'

  resources :appointments

  root to: 'pages#home'
end