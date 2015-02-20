Rails.application.routes.draw do
  resources :static_pages

  resources :sessions

  resources :developers

  resources :admins

  resources :stories

  resources :projects

  get'static_pages/home'
  root'static_pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'projects/:id/newstory' => 'projects#newstory', as: :newstory
  get 'admins/:id/showstories' => 'admins#showstories', as: :showstories
  get 'admins/:id/destroyprojects' => 'admins#destroyprojects', as: :destroyprojects
  get 'developers/:id/createstory' => 'developers#createstory', as: :createstory
  get 'developers/:id/signup' => 'developers#signup', as: :signup
  get 'developers/:id/show' => 'developer#show', as: :show
  get 'developers/:id/passwordchange' => 'developers#passwordchange', as: :passwordchange
  # You can have the root of your site routed with "root"


  get   'login' => 'sessions#new'
  post   'login' =>'sessions#create'
  get  'logout' =>'sessions#logout'
  # root 'sessions#new'
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
