Rails.application.routes.draw do
  root 'splash#index'
	devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	get '/trips/explore', to: 'trips#explore'
	resources :trips do
		resources :photos
	end
end
