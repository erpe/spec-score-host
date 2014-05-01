Rails.application.routes.draw do
  get 'dashboard/index', as: :dashboard

  devise_for :users
  root 'welcome#index'
  mount SpecScoreApi::Engine, at: "/api/v0" 
  #mount SpecScoreRegistry::Engine, at: "/registry" 
end
