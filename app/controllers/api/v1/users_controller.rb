module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:list_items), include: ['goals', 'list_items']
      end

    end
  end
end
