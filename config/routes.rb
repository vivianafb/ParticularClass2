Rails.application.routes.draw do
  
  get 'profiles/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
    scope "/admin" do
      resources :users
    end
    
    
  resources :posts
  resources :roles
  resources :users

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
