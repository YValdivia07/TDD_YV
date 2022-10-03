module Api
  module V1
    class UsersController < ApiController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def index
        authorize_user(UserPolicy)
        render json: User.all
      end

      def show
        user = User.find(params[:id])

        render json: user
      end
      
      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # == Interactor =============================================================================

      # == Method =================================================================================

      # == Params =================================================================================

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
    end
  end
end
