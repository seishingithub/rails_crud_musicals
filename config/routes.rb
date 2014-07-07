Rails.application.routes.draw do

  root 'welcome#index'
  resources :musicals

end
