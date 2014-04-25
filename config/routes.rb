Filmgrain::Application.routes.draw do

  resources :filmrolls, only: [:index, :show]
end
