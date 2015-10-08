module Api
  module V1
    module GoalsHelper
      def create_success
        render :show, status: :created, location: @goal
      end

      def create_errors
        render json: @comment.errors, status: :unprocessable_entity
      end

      def update_success
        render :show, status: :ok, location: @goal
      end

      def update_errors
        render json: @goal.errors, status: :unprocessable_entity
      end

      def destroy_success
        render json: {message: 'Goal successfully deleted'}, status: 200
      end

      def destroy_errors
        render json: {error: 'Goal could not be deleted.'}, status: 422
      end
    end
  end
end