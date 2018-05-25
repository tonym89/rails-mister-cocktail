Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "cocktails", to: "cocktails#index"
  # get "cocktails/:id", to: "cocktails#show"

  #  get "cocktails/new", to: "cocktails#new"
  # post "cocktails", to: "cocktails#create"
  resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
