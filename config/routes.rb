Rails.application.routes.draw do
  root to: "medics#index"
  get 'medics/index'

  resources :medics
end
