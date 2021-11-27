Rails.application.routes.draw do
  resources :prospectos, except: %i[index] do
    resources :conversations, only: :create
  end
  resources :conversations, only: :destroy
  devise_for :users, path: '', except: %i[create]
  root to: 'prospectos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
