Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  # get 'home/index'
  
  resources :reviews
  root to: 'home#index'
end
#   root to: 'products#index'
#   resources :products do
#     resources :reviews
#   end
# end