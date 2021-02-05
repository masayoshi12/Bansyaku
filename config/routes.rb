Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get 'bansyakuposts/index'
  root to: "bansyakuposts#index"
  resources :bansyakuposts, only: [:new, :create, :show, :edit, :update, :destroy]  
end
