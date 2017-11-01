Rails.application.routes.draw do

  get 'logins/index'

  get 'logins/new'

  get 'logins/create'

  get 'logins/update'

  get 'logins/destroy'

  get 'logins/show'

  get 'logins/edit'

  get 'admin', :to=> "acess#index"

  get 'acess/index'

  get 'acess/login'

  get 'acess/attempt'

  get 'acess/logout'


  resources :movies do 
    resources :comments
  end

  root 'movies#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
