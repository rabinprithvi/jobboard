Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get 'search', to: 'jobs#index'
  get 'autocomplete', to: 'jobs#autocomplete'
  get 'visitors/contact', to: 'visitors#contact'
  post 'visitors/mail', to: 'visitors#mail'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
