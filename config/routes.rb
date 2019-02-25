# frozen_string_literal: true

Rails.application.routes.draw do
  resources :goals
  resources :progresses
  root to: 'goals#index'
end
