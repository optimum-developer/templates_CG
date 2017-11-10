Rails.application.routes.draw do

 
  # resources :businesses
	root to: "dash_board#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  # resources :websites do
  #   # resources :used_template
  #   #   collection do
  #   #     get 'update_template_id', to: "websites#update_template_id"
  #   #   end
  #   # resources :templates do
  #   #   member do
  #   #     get "show_template", to: "templates#show_template"
  #   #     get "temp_edit", to: "templates#temp_edit"
  #   #     # get "edit ",to:"templates#edit"
        
  #   #     # get "show_template", to: "templates#show_template"
  #   #     get ":page_name", to: "templates#show_page"
  #   #     # get "edit ",to:"templates#edit"
      
  #   #   end
  #   #   collection do
  #   #     get "save_element_id_content", to: "templates#save_element_id_content"
  #   #   end
  # end
  resources :websites do
    collection do
        get 'update_template_id', to: "websites#update_template_id"
    end
  end
  resources :templates do
      member do
        get "show_template", to: "templates#show_template"
        get "temp_edit", to: "templates#temp_edit"
        # get "edit ",to:"templates#edit"
        
        # get "show_template", to: "templates#show_template"
        get ":page_name", to: "templates#show_page"
        # get "edit ",to:"templates#edit"
      
      end
      collection do
        get "save_element_id_content", to: "templates#save_element_id_content"
      end

    
  end

   resources :used_template
      # collection do
      #   # get 'update_template_id', to: "websites#update_template_id"
      # end
  # end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

  # resources :templates do
  #   member do
  #     get "show_template", to: "templates#show_template"
  #     get "temp_edit", to: "templates#temp_edit"
  #     # get "edit ",to:"templates#edit"
      
  #     # get "show_template", to: "templates#show_template"
  #     get ":page_name", to: "templates#show_page"
  #     # get "edit ",to:"templates#edit"
    
  #   end
  #   collection do
  #     get "save_element_id_content", to: "templates#save_element_id_content"
  #   end
  # end

end