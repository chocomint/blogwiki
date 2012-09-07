RailsApp::Application.routes.draw do
  get "entries/index"

  root :to => 'entries#index'
  resources :entries
end
