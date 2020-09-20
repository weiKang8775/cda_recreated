Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "contact-us", to: "pages#contact"
  get "login", to: "sessions#new"
end
