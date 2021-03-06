Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users  

  resources :projects, only:[:show, :index, :home]
  
  get "/projects" => 'projects#index'
  get "/home" => "pages#home", as: :home
  get "/profile" => "pages#profile", as: :profile
  get "/contact" => "pages#contact", as: :contact
  get "/test" => "pages#test", as: :test
  get "/CV" => "pages#CV", as: :CV
end
