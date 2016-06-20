module Api
  module V1
    class ListItemsController < ApplicationController

      def index

      end

      def create
        description = params["data"]["attributes"]["description"]
        goal = Goal.find(params["data"]["relationships"]["goal"]["data"]["id"])
        item = ListItem.create(description: description, goal: goal)
        render json: item
      end

      def update
        item = ListItem.find(params["id"])
        item.update(list_params)
        render json: item
      end

      def destroy
        ListItem.find(params[:id]).destroy
      end

      private

      def list_params
        params.require(:data).require(:attributes).permit(:description, :completed)
      end
    end
  end
end
