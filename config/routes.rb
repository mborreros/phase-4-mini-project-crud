Rails.application.routes.draw do
  resources :spices, only: [:index, :destroy, :update, :create]
end
