SampleApp::Application.routes.draw do
  get 'users/new'
  root  'static_pages#home' #changes url to '/' and is accessed by th root_path variable
 # get '/static_pages/home', to: 'static_pages#home', as: 'root'
  match '/signup', to: 'users#new', via: 'get'
#  get '/static_pages/help', to: 'static_pages#help', as: 'help'
  match '/help', to: 'static_pages#help', via: 'get' #name roots, changes url to '/help' and is accessed by the help_path variable
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

=begin
rake routes: #if this command is fed into the terminal, the routes set in the associated
application directory are displayed. Below are the current routes in this application.
   Prefix Verb URI Pattern          Controller#Action
users_new GET /users/new(.:format) users#new
     root GET /                    static_pages#home
   signup GET /signup(.:format)    users#new
     help GET /help(.:format)      static_pages#help
    about GET /about(.:format)     static_pages#about
  contact GET /contact(.:format)   static_pages#contact
=end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #     :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
