Rails.application.routes.draw do
  resources :blogs do
    resources :entries, except: :index do
      resources :comments, only: [:create, :destroy] do
        put 'approve', on: :member
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
