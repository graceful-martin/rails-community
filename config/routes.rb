Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index' => 'home#index'
  get '/write' => 'home#write'
  post '/create' => 'home#create'
  get '/modify/:id' => 'home#modify'
  post '/update/:id' => 'home#update'
  get '/delete/:id' => 'home#delete'
end
