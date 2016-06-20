Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :goals
      resources :list_items
    end
  end

  post '/login', to: "sessions#create"
  delete '/api/v1/list-items/:id', to: "api/v1/list_items#destroy"
  patch '/api/v1/list-items/:id', to: "api/v1/list_items#update"
  post '/api/v1/list-items', to: "api/v1/list_items#create"

end
