Rails.application.routes.draw do
  get '/posts/new' => 'home#new'
  get '/posts/create' => 'home#create'
  get '/posts/index' => 'home#index'
  get '/posts/show/:post_id' => 'home#show'
  get '/posts/destroy/:post_id' => 'home#destroy'
  get '/posts/edit/:post_id' => 'home#edit'
  get '/posts/update/:post_id' => 'home#update'
  root 'home#index'

  post '/posts/show/:post_id/comments/create' => 'comments#create'
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
