Rails.application.routes.draw do
  root to: 'cocktails#home'
  resources :cocktails do
    resources :doses
   end
   resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
