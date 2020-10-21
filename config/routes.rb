Rails.application.routes.draw do
  root to: "medics#index"
  get 'medics/index'
  get 'my_medics', to: 'medics#my_medics'
  get 'search_medic', to: 'medics#search'

  resources :medics
end
