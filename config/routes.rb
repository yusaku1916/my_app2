Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/top'
  get 'works/deadlines'

  resources :works, only: [:index, :new, :create, :edit, :destroy, :show, :update]
  # get 'homeworks/index'
  # get 'homeworks/create'
  # get 'homeworks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
