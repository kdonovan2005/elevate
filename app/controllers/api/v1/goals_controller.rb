module Api
  module V1
    class GoalsController < ApplicationController

      def index
        render json: Goal.includes(:list_items).all, include: ['list_items']
      end

      def show
        goal = Goal.includes(:list_items).find(params[:id])
        render json: goal, include: ['list_items']
      end

    end
  end
end
