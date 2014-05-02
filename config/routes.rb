Rails.application.routes.draw do
  get 'omniauth_callback/github'

  get 'dashboard/index', as: :dashboard

  devise_for :users
  root 'welcome#index'
  mount SpecScoreApi::Engine, at: "/api/v0" 
  #mount SpecScoreRegistry::Engine, at: "/registry" 
end
