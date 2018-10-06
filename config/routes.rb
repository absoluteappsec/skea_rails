Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get     "/articles", to: "articles#index"
  post    "/articles", to: "articles#create"
  get     "/articles/new", to: "articles#new", as: :new_article
  get     "/articles/:id/:action", to: "articles#edit", as: :edit_article
  get     "/articles/:id", to: "articles#show", as: :article
  post    "/articles/:id/vote/:type", to: "articles#vote", as: :vote
  patch   "/articles/:id", to: "articles#update"
  put     "/articles/:id", to: "articles#update"
  delete  "/articles/:id", to: "articles#destroy"

  #resources :articles
  root to: "home#index"
end
