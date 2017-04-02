Rails.application.routes.draw do
  get 'board/list'

  get 'board/creat'

  get 'board/view'

  # devise_for :users
  devise_for :users, :controllers => { :OmniauthCallbacksController => "users/OmniauthCallbacksController" }
  get 'auth/facebook/callback', to: 'sessions#create'
  root "readream#home"
  
 #   match '/upload', to: 'readream#upload', :via => [:get, :post]
  get'readream/home'
  get'readream/diary'
  get'readream/community'
  get'readream/about'
  get'readream/newdream'
  post "/upload" => "readream#upload"
  get "diary" => "readream#diary"
  get "mydiary" => "readream#mydiary"
   
   
   
  get "home" => "readream#home"

  get "community" => "board#list"
  get "about" => "readream#about"
  match '/sendm', to: 'readream#sendm', :via => [:get, :post]
  match '/newdream',  to: 'board#newdream', :via => [:get, :post]
  get "list" => "board#list"
  match '/DoWriteBoard',  to: 'board#DoWriteBoard', :via => [:get, :post]
  match '/viewWork',  to: 'board#viewWork', :via => [:get, :post]
  #post "DoWriteBoard" => "board#DoWriteBoard"
  get "/listSpecificPageWork" => "board#listSpecificPageWork"
  match '/delete', to: 'board#delete', :via => [:get, :post]
  match '/edit', to: 'board#edit', :via => [:get, :post]
  match '/update', to: 'board#update', :via => [:get, :post]
  post '/addcomment' => 'board#addcomment'
  #match '/addcomment', to 'board#addcomment', :via => [:get, :post]
end
