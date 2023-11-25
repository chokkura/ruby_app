# frozen_string_literal: true

Rails.application.routes.draw do
  root 'top#index'
  devise_for :users

  resources :articles do
    resources :comments
  end

  get 'about' => 'about#show'
  get 'service' => 'services#index'
  get 'service/use_script' => 'services#use_script'
  get 'service/use_importmap' => 'services#use_importmap'
  get 'service/use_react' => 'services#use_react'
end
