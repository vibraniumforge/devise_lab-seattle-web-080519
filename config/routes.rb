Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get '/about' => 'welcome#about'
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
