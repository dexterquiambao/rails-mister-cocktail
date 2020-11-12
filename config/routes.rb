Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # added root to - not sure if this is required?
  root to: "cocktails#index"
  # or root 'cocktails#index' is a shortcut for the above code - Source: Ruby Docs > routing
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
end
