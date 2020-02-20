Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'authors#index'

  resources :authors, except: [:edit, :update] do
    resources :books, except: [:edit, :update]
  end

  resources :users, except: [:edit, :update] do
    resources :accounts, except: [:edit, :update]
  end

  resources :physicians, :appointment
end
