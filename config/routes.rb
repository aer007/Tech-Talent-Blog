Rails.application.routes.draw do

  resources :comments
  resources :posts
  root 'posts#index'

  get '/posts/new'

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get ':username' => 'posts#user_posts', as: 'user_posts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
