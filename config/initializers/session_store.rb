# frozen_string_literal: true

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_todo_app', domain: 'glacial-taiga-73174.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_todo_app'
end
