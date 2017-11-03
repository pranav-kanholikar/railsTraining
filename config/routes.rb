Rails.application.routes.draw do

  resources :logins do
    collection do
      get 'get_login' ,as: "logining"
      post 'user'
    end

    member do
      post 'sign_in' ,as: "singing_in"
    end

  end

  get 'admin', :to=> "acess#index"

  get 'acess/index'

  get 'acess/login'

  get 'acess/attempt'

  get 'acess/logout'


  resources :movies do 
    resources :comments
  end

  root 'acess#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
