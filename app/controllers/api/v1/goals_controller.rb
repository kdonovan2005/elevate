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

      def create
        goal_name = params["data"]["attributes"]["name"]
        user_id = params["data"]["relationships"]["user"]["data"]["id"]
        start_date = params["data"]["attributes"]["start-date"]
        end_date = params["data"]["attributes"]["end-date"]
        user = User.find(user_id)
        goal = Goal.create(name: goal_name, start_date: start_date, end_date: end_date, user: user)
        render json: goal
      end

      def destroy
        Goal.find(params["id"]).destroy
      end

    end
  end
end
