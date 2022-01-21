Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  root "rooms#index"
  resources :rooms, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end  
  
end
