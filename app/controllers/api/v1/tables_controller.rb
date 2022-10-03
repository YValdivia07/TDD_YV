module Api
  module V1
    class TablesController < ApiController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      
      def show
        authorize_user(TablePolicy)

        render json: Table.find(params[:id])
      end

      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      def create
        authorize_user(TablePolicy)
        
        table = Table.new(table_params)

        return render json: table, status: :created if table.save

        render json: table.errors, status: :unprocessable_entity
      end

      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # == Interactor =============================================================================

      # == Method =================================================================================

      # == Params =================================================================================

      def table_params
        params.require(:table).permit(:number)
      end

      # == Poros ==================================================================================

      # == Scope ==================================================================================

      # == Serializer =============================================================================
    end
  end
end
