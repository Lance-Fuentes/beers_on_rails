Rails.application.routes.draw do
  resources :beers #this is the equivalent of where the begin comment is
  resources :companies, only: [:index, :show] #equivalent to gets
  root to: 'companies#index' #default page 
  #get 'companies/index'
  #get 'companies/show'

#get "companies",      to: "companies#index",  as: "companies" #companies_path
#get "companies/:id",  to: "companies#show",   as: "company"   #company_path

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

=begin --manual way to define
  GET       /beers            => beers#index   (load/displaying all possible beers)
  GET       /beers/:id        => beers#show    (load 1 specific beer from id)
  GET       /beers/new        => beers#new     (displaying a beer form)
  POST      /beers            => beers#create  (create a beer with posted data)
  GET       /beers/:id/edit   => beers#edit    (Display a form for editing a beer)
  PATCH     /beers/:id        => beers#update  (update a beer with patched data)
  DELETE    /beers/:id        => beeers#delete (Delete beer by id)
=end

#rails g scaffold Beer name:string price:decimal description:string --on terminal

end
