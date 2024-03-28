Rails.application.routes.draw do
  devise_for :users
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get '/home', to: "homes#index"
get '/about', to: "abouts#index"
get '/testimonial', to: "testimonials#index"
get '/product', to: "products#index"
get '/blog', to: "blogs#index"
get '/contact', to: "contacts#index"
get '/account', to: 'accounts#index'
  get '/checkout', to: 'checkouts#index'
  get '/shopping', to: 'shoppings#index'
  get '/widget', to: 'widgets#index'
post '/subscribe', to: 'homes#create'
  resources :homes
  resources :abouts
  resources :testimonials
  resources :products
  resources :blogs
  resources :contacts
  resources :accounts
  resources :checkouts
  resources :shoppings
   resources :widgets
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "homes#index"
end
