Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :goals do
    resources :notes, only: [:create, :update, :destroy]
  end
  root 'goals#index'
end
