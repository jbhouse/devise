Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # this gives us a way of recieving the information we get back from Facebook
  # or whatever we are working with
  root to: 'pages#index'
end
