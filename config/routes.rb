Rails.application.routes.draw do
  resources :bookings, only: %i[show new create]
  resources :flights, only: %i[index]
  root to: 'flights#index'
end
