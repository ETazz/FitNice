class FitnicesController < ApplicationController
    before_action :authenticate_user
    before_action :set_fitnice, only: [:show, :update, :destroy]

### may need to add :show

    before_action :check_ownership, only: [:update, :destroy]


### need to make it so only the signed in user can see their 

    def index
        @fitnices = Fitnice.all
        render json: @fitnices
    end

    def create 
        @fitnice = current_user.fitnices.create(fitnice_params)
        if @fitnice.errors.any?
            render json: @fitnice.errors, status: :unprocessable_entity
        else 
            render json: @fitnice, status: 201
        end
    end

    def show 
        render json: @fitnice.transform_fitnice
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

    def check_ownership 
        if current_user.id != @fitnice.user.id
            render json: {error: "you dont have permision to do that"}, status: 401
        end
    end
end
