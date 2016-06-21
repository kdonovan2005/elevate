module Api
  module V1
    class GoalsController < ApplicationController

      def index
        render json: current_user.goals.includes(:list_items).all, include: ['list_items', 'goals']
      end

      def show
        goal = Goal.includes(:list_items).find(params[:id])
        render json: goal, include: ['list_items']
      end

      def create
        goal_name = params["data"]["attributes"]["name"]
        start_date = params["data"]["attributes"]["start-date"]
        end_date = params["data"]["attributes"]["end-date"]
        goal = Goal.create(name: goal_name, start_date: start_date, end_date: end_date, user: current_user, active: true)
        render json: goal
      end

      def update
        goal = Goal.find(params["data"]["id"])
        goal.update(goal_params)
        render json: goal
      end

      def destroy
        Goal.find(params["id"]).destroy
      end

      private

      def goal_params
        params.require("data").require("attributes").permit("name", "active")
      end

    end
  end
end
