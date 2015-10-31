Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get 'search', to: 'jobs#index'
  get 'autocomplete', to: 'jobs#autocomplete'
end
