Rails.application.routes.draw do
#   get 'blog_functions/index'

#   get 'blog_functions/show'

#   get 'blog_functions/edit'

#   get 'blog_functions/update'

#   get 'blog_functions/destroy'

 # get 'contacts/new'

  #get 'contacts/create'
   resources :contacts
#   resources :blog_functions
   resources :blog_functions do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
