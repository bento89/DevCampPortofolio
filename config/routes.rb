<<<<<<< HEAD
Rails.application.routes.draw do
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
=======
Rails.application.routes.draw do
  resources :portofolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
>>>>>>> resource-generator
