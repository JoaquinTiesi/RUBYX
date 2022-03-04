Rails.application.routes.draw do
  resources :peliculapersonajes
  resources :peliculas
  resources :generos
  resources :personajes
  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
     post '/signup', to: 'registrations#create' 	
     post '/login', to: 'sessions#create'			
     delete '/logout', to: 'sessions#destroy'		
   end
end
