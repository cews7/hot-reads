Rails.application.routes.draw do
  get 'links/index'

  root to: 'links#index'
end
