Rails.application.routes.draw do

  resources :staticpages, only: [:show]
end
