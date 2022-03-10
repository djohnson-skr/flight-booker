Rails.application.routes.draw do
  resources :flights, only: %i[index]
  root to: 'flights#index'
end
