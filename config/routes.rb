Rails.application.routes.draw do
  root 'top#index'
  devise_for :users

  get "about" => "about#show" 
  get "service" => "services#index"
  get "service/use_script" => "services#use_script"
  get "service/use_importmap" => "services#use_importmap"
  get "service/use_react" => "services#use_react"
end
