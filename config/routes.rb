PaperclipDemo::Application.routes.draw do
  devise_for :users
  resources :friends, :orders, :shirts, :home
  root :to => 'friends#index'
end
