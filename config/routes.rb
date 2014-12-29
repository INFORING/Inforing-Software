Rails.application.routes.draw do
  resources :portfolio_items
  resources :news

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  match '/about', to: 'pages#about', via: 'get'
  match '/price', to: 'pages#price', via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'
  match '/admin/signin', to: 'pages#admin_signin', via: 'get'
  match '/admin_session_create', to: 'pages#admin_session_create', via: 'post'
  match '/admin_session_destroy', to: 'pages#admin_session_create', via: 'get'
  match '/portfolio_items/:id/image_description', to: 'portfolio_items#portfolio_image_description', via: 'post', as: :portfolio_image_description
  match '/portfolio_items/:id/image_delete', to: 'portfolio_items#portfolio_image_delete', via: 'delete', as: :portfolio_image_delete
  match '/order', to: 'pages#order', via: 'get', as: :order
   match '/order/send', to: 'pages#send_order', via: 'get', as: :send_order
  match '/feedback', to: 'pages#feedback', via: 'get'

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
