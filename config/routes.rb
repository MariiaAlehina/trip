Rails.application.routes.draw do
  devise_for :users

  root to: "welcome#index"

  resource :tickets, only: [:create, :show]
  resources :trains, only: [:show]

  namespace :admin do
    resources :routes

    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_time, on: :member
    end

    resources :trains do
      resources :passenger_cars, shallow: true
    end
  end
  get "welcome/index"

  # get    '/tickets',         to: 'tickets#show'
  # post   '/tickets',         to: 'tickets#create'
  #
  # get    '/routes',          to: 'routes#index'
  # post   '/routes',          to: 'routes#create'
  # get    '/routes/new',      to: 'routes#new', as: :new_route
  # get    '/routes/:id/edit', to: 'routes#edit', as: :edit_route
  # get    '/routes/:id',      to: 'routes#show'
  # put    '/routes/:id',      to: 'routes#update'
  # delete '/routes/:id',      to: 'routes#destroy', as: :route
  #
  # patch  '/railway_stations/:id/update_position',  to: 'railway_stations#update_position'
  # patch  '/railway_stations/:id/update_time',      to: 'railway_stations#update_time'
  # get    '/railway_stations',                      to: 'railway_stations#index'
  # post   '/railway_stations',                      to: 'railway_stations#create'
  # get    '/railway_stations/new',                  to: 'railway_stations#new', as: :new_railway_station
  # get    '/railway_stations/:id/edit',             to: 'railway_stations#edit', as: :edit_railway_station
  # get    '/railway_stations/:id',                  to: 'railway_stations#show'
  # patch  '/railway_stations/:id',                  to: 'railway_stations#update'
  # put    '/railway_stations/:id',                  to: 'railway_stations#update'
  # delete '/railway_stations/:id',                  to: 'railway_stations#destroy',  as: :railway_station
  #
  # get    '/trains/:train_id/passenger_cars',       to: 'passenger_cars#index'
  # post   '/trains/:train_id/passenger_cars',       to: 'passenger_cars#create'
  # get    '/trains/:train_id/passenger_cars/new',   to: 'passenger_cars#new', as: :new_train_passenger_car
  # get    '/passenger_cars/:id/edit',               to: 'passenger_cars#edit', as: :edit_train_passenger_car
  # get    '/passenger_cars/:id',                    to: 'passenger_cars#show'
  # patch  '/passenger_cars/:id',                    to: 'passenger_cars#update'
  # put    '/passenger_cars/:id',                    to: 'passenger_cars#update'
  # delete '/passenger_cars/:id',                    to: 'passenger_cars#destroy', as: :passenger_car
  #
  # get    '/trains',                                to: 'trains#index'
  # post   '/trains',                                to: 'trains#create'
  # get    '/trains/new',                            to: 'trains#new', as: :new_train
  # get    '/trains/:id/edit',                       to: 'trains#edit', as: :edit_train
  # get    '/trains/:id',                            to: 'trains#show'
  # patch  '/trains/:id',                            to: 'trains#update'
  # put    '/trains/:id',                            to: 'trains#update'
  # delete '/trains/:id',                            to: 'trains#destroy', as: :train




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
