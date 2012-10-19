Lunchlady::Application.routes.draw do
  root :to => 'Clearance::Sessions#new'
  resources :locations, only: [:index, :show]
end
