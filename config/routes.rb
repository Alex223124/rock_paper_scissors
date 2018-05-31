Rails.application.routes.draw do

  get "throw" => "throws#new"

  root to: 'visitors#index'
end
