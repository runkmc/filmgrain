Filmgrain::Application.routes.draw do

  root "filmrolls#index"
  resources :filmrolls, only: [:index, :show, :edit, :update]
end
