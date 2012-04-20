ChankoSample::Application.routes.draw do
  match '/' => "articles#index", :as => 'top'

  match '/auth/login' => "auth#login", :as => "login", :method => :post
  match '/auth/logout' => "auth#logout", :as => "logout", :method => :post

  resources :users do
  end

  resources :articles do
  end
end
