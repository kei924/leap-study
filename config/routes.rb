Rails.application.routes.draw do
  
  devise_for :teachers, controllers: {
    sessions:      'teachers/sessions',
    passwords:     'teachers/passwords',
    registrations: 'teachers/registrations'
  }
  resources :teachers do
    get 'requests' => 'requests#index'
    get 'requests/complete' => 'requests#complete'
    post 'requests/complete'
    get 'mypage' =>'teachers#mypage'
    resources :chats
  end
  devise_for :students
  resources :students do
    resources :chats
    # post 'post' => 'chats#post'
  end
  root 'welcome#index'
  resources :chats do
    get 'post' => 'chats#post'

    resources :messages
    # post 'chats/"#{@chat_id}"' => 'messages#create'
  end
  # resources :tutors do
  #   get 'requests' => 'requests#index'
  #   get 'requests/complete' => 'requests#complete'
  #   post 'requests/complete'
  # end
  # devise_scope :students do
  #   gets '/students/sign_out' => 'devise/sessions#destroy'
  # end
  # get 'tutors/show' => 'tutors#show'
  # get 'tutors/detail' => 'tutors#detail'
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
