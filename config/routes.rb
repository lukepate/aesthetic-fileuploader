PaperclipDemo::Application.routes.draw do
  devise_for :users
  resources :friends, :orders
  root :to => 'friends#index'
end
