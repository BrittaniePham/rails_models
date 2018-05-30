Rails.application.routes.draw do
  resources :people do
    resources :contacts
  end
end
