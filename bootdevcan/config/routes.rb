Bootdevcan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index', as: :authenticated_root
  end
  root :to => "home#index"

  devise_for :users

end
