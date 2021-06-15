Rails.application.routes.draw do
  namespace :api do
    get "/api_test", to:'static#api_test'
    resources :patients
    resources :doctors
    resources :appointments
 end
end
