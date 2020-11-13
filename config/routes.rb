Rails.application.routes.draw do
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: "cocktails#index"
  root "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  resources :reviews, only: [ :show, :edit, :update]

  # get 'cocktails', to: 'cocktails#index'

  # Below route works...
  # get 'index' => "cocktails#index"
end
