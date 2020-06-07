Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/me'
  get 'sessions/create'
  get 'sessions/destory'
  resources :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
