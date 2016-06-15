Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :goals
      resources :list_items
    end
  end
end
