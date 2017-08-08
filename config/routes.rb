Rails.application.routes.draw do

 
  # resources :businesses
	root to: "dash_board#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :businesses

  devise_for :users, controllers: {
    sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

  resources :templates do
    member do
      get "show_template", to: "templates#show_template"
      get ":page_name", to: "templates#show_page"
    end
  end

end