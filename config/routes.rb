Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/mealplanner', to: "pages#mealplanner", as: 'mealplanner'
  get '/review', to: "pages#review", as: 'review'
  get '/statistics', to: "pages#statistics", as: 'statistics'
end
