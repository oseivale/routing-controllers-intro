Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # This is where we define our routes for this Rails app

get '/welcome' => 'pages#welcome'
# The above line of code states that if the user makes a GET request to the URL "/welcome",
# Rails should run the welcome instance method inside the PagesController

get root 'pages#welcome'

get '/about' => 'pages#about'

get '/contest' => 'pages#contest'

get '/kitten/:size' => 'pages#kitten', as: 'kitten'

get '/kittens/:size' => 'pages#kittens'

get '/secrets/:magic_word' => 'pages#secrets'

end
