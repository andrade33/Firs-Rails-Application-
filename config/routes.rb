Rails.application.routes.draw do
  
  resources :contatos
  #devise_for :users
  devise_for :users
  
  get  'login', to: 'sessions#new'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  devise_scope :user do
    get '/logout',  to: 'sessions#destroy'
  end

end
