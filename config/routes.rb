Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gifts, only: [:index, :show, :create, :new, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
