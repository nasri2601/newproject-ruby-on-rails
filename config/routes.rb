Rails.application.routes.draw do
  get 'article'=>'article#index'
  post 'article'=>'article#create'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
