module Api
  module V1
    class DogsController < ApplicationController
      before_action :set_dog, only: [:show]

      # GET /api/v1/dogs
      def index
        @dogs = Dog.all
        render json: @dogs
      end

      # GET /api/v1/dogs/1
      def show
        render json: @dog
      end

      private

      def set_dog
        @dog = Dog.find(params[:id])
      end

      def dog_params
        params.require(:dog).permit(:name, :breed, :status)
      end
    end
  end
end
