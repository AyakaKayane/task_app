Rails.application.routes.draw do
  get 'user/index'
  get 'user/new'
  post 'user/new' ,to: 'user#create'

  get 'user/:id/edit' ,to: 'user#edit'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :schedule
  resources :user

end
