Rails.application.routes.draw do
  resources :students 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'companies#index'

  resources :authors, except: [:edit, :update] do
    resources :books, except: [:edit, :update]
  end

  resources :users, except: [:edit, :update] do
    resources :accounts, except: [:edit, :update]
  end

  resources :physicians, :appointment

  resources :companies do
    resources :notes, module: :companies
  end
  resources :employees do
    resources :notes, module: :employees
  end
end
