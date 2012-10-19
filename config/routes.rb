Lunchlady::Application.routes.draw do
  root :to => 'locations#index', format: :json
  resources :locations, only: [:index, :show], defaults: { format: :json }
end
