PaperclipDemo::Application.routes.draw do
  devise_for :users
  resources :friends
  root :to => 'friends#index'
end
