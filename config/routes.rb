Rails.application.routes.draw do
  resources :cocktail_ingredients
  resources :ingredients
  resources :cocktails do
    resources :cocktail_ingredients
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
