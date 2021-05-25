Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pets#index'

  # index
  get 'pets', to: 'pets#index', as: :pets
  # new
  get 'pets/new', to: 'pets#new', as: :new_pet
  # show
  get 'pets/:id', to: 'pets#show', as: :pet
  # destroy
  delete 'pets/:id', to: 'pets#destroy'
  # create
  post 'pets', to: 'pets#create'
  # edit
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  # update
  patch 'pets/:id', to: 'pets#update'

  resources :users, only: [:new, :create]

end
