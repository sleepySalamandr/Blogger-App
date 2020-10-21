Rails.application.routes.draw do
  resources :follows
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  delete '/users/sign_out' => 'sessions#destroy'
  get '/user/home' => 'users#show'


  resources :users

  resources :articles do
    resources :comments
end



  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"


end
