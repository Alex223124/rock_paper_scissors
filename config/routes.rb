Rails.application.routes.draw do

  get "throw" => "throws#new"
  post "throw" => "throws#throw"

  root to: 'visitors#index'
end
