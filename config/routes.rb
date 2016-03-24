Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

	# Root
  root 'static_pages#home'

  # Base Pages
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  
  # Sessions Routes
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # Full Routes
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

end
