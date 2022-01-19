Rails.application.routes.draw do
  resources :prospectos, except: :index do
    resources :conversations, only: :create
  end
  resources :conversations, only: :destroy
  devise_for :users, skip: [:registrations], path: ''
  root to: 'prospectos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
