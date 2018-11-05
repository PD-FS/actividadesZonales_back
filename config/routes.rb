Rails.application.routes.draw do
  resources :activity_places
  resources :interest_by_cathegories
  resources :user_activities
  resources :activities
  resources :users
  resources :activity_types
  resources :places
  resources :education_levels
  resources :blood_types
  resources :document_types
  resources :neighborhoods
  resources :upzs
  resources :district_areas
  resources :cities
  resources :categories
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
