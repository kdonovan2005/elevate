module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:list_items).all, include: ['goals', 'list_items']
      end

      def show
        user = User.includes(:list_items).find(params[:id])
        render json: user, include: ['goals', 'list_items']
      end
    end
  end
end
