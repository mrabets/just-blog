Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  # devise_for :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end

  root 'static_pages#home'

  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
