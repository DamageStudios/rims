Rims::Application.routes.draw do
  devise_for :users

  root :to => redirect('/items')
  resources :items
end
