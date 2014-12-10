Rails.application.routes.draw do
  resources :line_items

  resources :orders

  resources :provinces

  resources :customers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :categories

  resources :accounts

  resources :products

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: 'storefront#index'

  get 'storefront/:id' => 'storefront#show', as: 'show'
  get 'all' => 'storefront#show_all', as: 'show_all'
  get 'featured_products' => 'storefront#featured_products', as: 'featured_products'

  get 'search' => 'storefront#search', as: 'search'
  get 'search_results' => 'storefront#search_results', as: 'search_results'
  get 'search_by_category' => 'storefront#search_by_category', as: 'search_by_category'
  get 'search_results_by_category' => 'storefront#search_results_by_category', as: 'search_results_by_category'

  get 'categorized/:id' => 'storefront#show_by_category', as: 'show_by_category'
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'about' => 'storefront#about', as: 'about'
  get 'contact' => 'storefront#contact', as: 'contact'

  get 'add_lineitem' => 'storefront#add_lineitem', as: 'add_lineitem'
  get 'show_cart' => 'storefront#show_cart', as: 'show_cart'
  get 'checkout' => 'storefront#checkout', as: 'checkout'
  # get 'customer_info' => 'storefront#customer_info', as: 'details'

  get "paypal_express/checkout"
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
