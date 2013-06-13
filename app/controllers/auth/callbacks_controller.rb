module Auth
  class CallbacksController < ApplicationController
    def show
      render json: auth_hash
    end

    protected

    def auth_hash
      request.env['omniauth.auth']
    end
  end
end
