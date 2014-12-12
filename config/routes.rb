Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'homes#index'
  #root :to => 'homes#index'
  resources :homes do
    member do
      delete 'destroy_multiple'
      delete 'restore'
      delete 'destroy_restore'
      get 'trash'
      delete 'restore_multiple'
    end
  end
  resources :messages do
    member do
      get 'inbox'
      get 'outbox'
      get 'reply_inbox_message'
      get 'reply_outbox_message'
      post 'create_reply_inbox_message'
      post 'create_reply_outbox_message'
      delete 'destroy_inbox_message'
      delete 'destroy_outbox_message'
      delete 'destroy_multiple_messages'
      end
  end

  resources :albums do
    member do
      #post 'album'
      end
  end
  resources :events do
    member do
      #post 'album'
      end
  end

    
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