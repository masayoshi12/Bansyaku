Rails.application.routes.draw do
  get 'bansyakus/index'
  root to: "bansyakus#index"
end
