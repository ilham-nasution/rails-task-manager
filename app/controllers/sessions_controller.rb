# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params['user']['email'])
               .try(:authenticate, params['user']['password'])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end
end
