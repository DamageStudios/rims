Rims::Application.routes.draw do
  get "welcome/index"
  devise_for :users

  root :to => 'welcome#index'
  #root :to => redirect('/items')
  resources :items
  resources :users
end
