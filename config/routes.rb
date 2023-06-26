Rails.application.routes.draw do
  resources :photos, only: [:index, :show]
  resources :users, only: [:show]

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'  
  }

  root to: "photos#index"
end
