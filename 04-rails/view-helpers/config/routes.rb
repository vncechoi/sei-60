Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/chicken-treat-numbers' => 'pages#numbers', :as => 'numbers'
  get '/text' => 'pages#text'
  get '/assets' => 'pages#assets'
  get '/url' => 'pages#url'
end
