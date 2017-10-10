PaperclipDemo::Application.routes.draw do
  devise_for :users
  resources :friends, :orders, :shirts, :home
  resources :orders, only: [:index,:show,:create,:destroy,:new,:update,:edit]
  root :to => 'home#index'
end
