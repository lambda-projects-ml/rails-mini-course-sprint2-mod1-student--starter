Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :customers do
        resources :orders, only: [:index,:create,]
      end
      resources :orders, only: [:index,:show,:ship] do
        resources :products, only: [:index, :show]
      end
    end
  end
end
