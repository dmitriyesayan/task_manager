Rails.application.routes.draw do
  resources :tags do
    resources :tasks do
      resources :comments
    end
  end
end
