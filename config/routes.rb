Lunchlady::Application.routes.draw do
  root :to => 'locations#index'
  resources :locations, only: [:index, :show], defaults: { format: :json }
end
