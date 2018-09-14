Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'incidents#new'

  resources :incidents do
    get :detailed
  end
end
