module Api
  module V1
    class ApiController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
        rescue_from Pundit::NotAuthorizedError, with: :unauthorized

        private
  
        def record_not_found(error)
          render json: { errors: [error] }, status: :not_found
        end

        def unauthorized
          head(:unauthorized)
        end 
    end
  end
end
