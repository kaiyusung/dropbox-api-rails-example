Rails.application.routes.draw do

  resources :dashboards

  get "/dropbox",  :controller => "dropbox", :action => "index"
  get "/dropbox/auth",  :controller => "dropbox", :action => "show"
  get "/dropbox/callback",  :controller => "dropbox", :action => "create"

  root 'dashboard#index'
end
