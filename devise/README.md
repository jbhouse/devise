# README

installation steps

add the devise gem to the gemfile:
  Gemfile- game 'devise'

in the terminal
  bundle
  rails generate devise:install

add root directory
  config/routes.rb- root to: 'users#index'

add notices and alerts to the layout
  (in the body tag above the yield)
  (check this layout page for an example) 

in the terminal
  rails g devise:views
  rails generate devise USER
  rails db:create
  rails db:migrate

fist pump aggressively
