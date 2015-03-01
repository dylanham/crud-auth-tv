Rails.application.routes.draw do
  root 'tvs#index'
  resources :tvs

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
  get 'sign-out', to: 'auth#destroy'
  post 'sign-in', to: 'auth#create'
  get 'sign-in', to: 'auth#new'
end
