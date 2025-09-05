Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "home#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get '/articles' => "articles#index"
  get '/articles/new' => "articles#new", as: 'new_article'
  post '/articles' => "articles#create", as: 'create_article'
  get '/articles/:id' => "articles#show", as: 'article'
  get '/articles/:id/edit' => "articles#edit", as: 'edit_article'
  put "articles/:id" => "articles#update", as: "update_article" # update_article_path(article.id)
  patch "articles/:id" => "articles#update"
  delete "articles/:id" => "articles#delete", as: "delete_article" 

  get '/user_profiles' => "user_profiles#index"
  get '/user_profiles/new' => "user_profiles#new", as: 'new_user_profiles'
  post '/user_profiles' => "user_profiles#create", as: 'create_user_profile'
  get '/user_profiles/:id' => "user_profiles#show", as: 'user_profile'
  get '/user_profiles/:id/edit' => "user_profiles#edit", as: 'edit_user_profile'
  put "user_profiles/:id" => "user_profiles#update", as: "update_user_profile" # update_user_profile_path(user_profile.id)
  patch "user_profiles/:id" => "user_profiles#update"
  delete "user_profiles/:id" => "user_profiles#delete", as: "delete_user_profile" 

  get '/comments' => "comments#index"
  get '/comments/new' => "comments#new", as: 'new_comments'
  post '/comments' => "comments#create", as: 'create_comment'
  get '/comments/:id' => "comments#show", as: 'comment'
  get '/comments/:id/edit' => "comments#edit", as: "edit_comment"
  put "comments/:id" => "comments#update", as: "update_comment" # update_path_path(comment.id)
  patch "comments/:id" => "comments#update"
  delete "comments/:id" => "comments#delete", as: "delete_comment"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
