Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'home#index'

end
#   root to: 'products#index'
#   resources :products do
#     resources :reviews
#   end
# end