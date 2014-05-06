Filmgrain::Application.routes.draw do

  root "filmrolls#index"
  resources :filmrolls
end
