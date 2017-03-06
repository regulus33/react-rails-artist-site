Rails.application.routes.draw do
	root to: 'site#index'
	get '/work', to: 'site#work'
	get '/about', to: 'site#about'
	get '/contact', to: 'site#contact'
    namespace :api do
      namespace :v1 do
        resources :projects, only: [:index, :create, :destroy, :update]
		
      end
   end
end