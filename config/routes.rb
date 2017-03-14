Rails.application.routes.draw do
  devise_for :users
  
  
  resources :users do
  	resources :pets
  end
  get '/users/:id/edithost', to: 'users#edithost', as: :edit_user_host
  patch '/users/:id/edithost', to: 'users#update_host'
  put '/users/:id/edithost', to: 'users#update_host'
  get '/users/:id/showhost', to: 'users#showhost', as: :user_host
  get '/search', to: 'site#search', as: :site_search
  get '/', to: 'site#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
