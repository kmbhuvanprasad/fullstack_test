Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

root 'events#home'
get '/users/new' => 'users#new' ,as: :new_user
post '/users' => 'users#create' ,as: :users

get '/events/new' => 'events#new' ,as: :new_event
post '/events' =>'events#create' ,as: :events
get '/event' =>'events#index' ,as: :event_index
get '/event/:id/edit' =>'events#edit', as: :event_edit
patch '/event/:id/edit' => 'events#update', as: :event_update
delete '/event/:id' => 'events#destroy' ,as: :event_destroy
# get '/event/:id' =>'events#show' ,as: :event_show
# get "user/list" => "users#index", as: :user_index

get '/sessions/new' => 'sessions#new',as: :signup
get '/session/:id/edit' => 'sessions#edit', as: :session_edit
patch '/session/:id/edit' => 'sessions#update', as: :session_update

post  '/sessions' => 'sessions#create', as: :sessions

delete '/sessions/:id' => 'sessions#destroy', as: :session 



  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
