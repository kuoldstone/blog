Rails.application.routes.draw do
 
 root 'pages#index'
 get "/pages/:page" => "pages#show"
 
 resources :groups do
 	resources :posts
 end
end
