Rails.application.routes.draw do
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    # get "/some/route" => "some_devise_controller"
  end
  root 'welcome#index'
  devise_for :users
  resources :report_months
  get '/report_days/index_home', to: 'report_days#index_home', as: 'index_home'
  resources :report_days
  resources :customers


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
