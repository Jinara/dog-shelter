module Api
  module V1
    class DogsController < ApplicationController
      # GET /api/v1/dogs
      def index
        @dogs = Dog.all
        render json: @dogs
      end
    end
  end
end
