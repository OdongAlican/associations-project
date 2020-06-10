Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users
  resources :events
  resources :event_attendings

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
