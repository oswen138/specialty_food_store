Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users
  root to: 'home#index'
end
#   root to: 'products#index'
#   resources :products do
#     resources :reviews
#   end
# end