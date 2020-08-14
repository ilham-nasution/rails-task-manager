# frozen_string_literal: true

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_todo_app', domain: 'limitless-headland-79091.herokuapp.com', same_site: :lax
else
  Rails.application.config.session_store :cookie_store, key: '_todo_app'
end
