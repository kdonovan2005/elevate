module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]

      def show
        user = User.includes(:list_items).find(params[:id])
        render json: user, include: ['goals', 'list_items']
      end

      def create
        binding.pry
        user = User.create(user_params)
        render json: user
      end

      private
      
      def user_params
        params.require(:data).require(:attributes).permit(:name, :email, :avatar, :password)
      end

    end

  end
end
