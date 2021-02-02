Rails.application.routes.draw do
  devise_for :users
  get 'bansyakus/index'
  root to: "bansyakus#index"
end
