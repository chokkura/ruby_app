Rails.application.routes.draw do
  root 'top#index'
  devise_for :users

  get "about" => "about#show" 
end
