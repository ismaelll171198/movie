Rails.application.routes.draw do
  devise_for :users
  root :to => "statics#index"
  get '/about' => 'static#about', :as => :about
  get 'statics/index'

  get 'statics/about'

	resources :peliculas
	resources :genres
	resources :countrys
	resources :comentarios
	resources :lenguages
  get 'peliculas/index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
