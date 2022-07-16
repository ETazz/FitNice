class FitnicesController < ApplicationController
    before_action :set_fitnice, only: [:show, :update, :destroy]

    def index
        @fitnices = Fitnice.all
        render json: @fitnices
    end

    def create 
            @fitnice = Fitnice.create(fitnice_params)
            if @fitnice.errors.any?
                render json: @fitnice.errors, status: :unprocessable_entity
            else 
                render json: @fitnice, status: 201
        end
    end

    def show 
        render json: @fitnice
    end

    def update
        @fitnice = Fitnice.create(fitnice_params)
            if @fitnice.errors.any?
                render json: @fitnice.errors, status: :unprocessable_entity
            else 
                render json: @fitnice, status: 201
        end
    end

    def destroy 
        @fitnice.delete
        render json: 204
    end

    private 
    def fitnice_params
        params.require(:fitnice).permit(:category_id, :body)
    end

    def set_fitnice
        begin
        @fitnice = Fitnice.find(params[:id])
        rescue
            render json: {error: "joke not found"}, status: 404
        end
    end
end
