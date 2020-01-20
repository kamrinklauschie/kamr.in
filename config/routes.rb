Rails.application.routes.draw do
  get 'home', to: 'pages#home', as: :home
  get 'about', to: 'pages#about', as: :about
  get 'portfolio', to: 'pages#portfolio', as: :portfolio
  get 'contact', to: 'pages#contact', as: :contact
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
