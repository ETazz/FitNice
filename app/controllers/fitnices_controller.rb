class FitnicesController < ApplicationController

### makes sure the user is authenticated for everything on the website except 
### index and show 

    before_action :authenticate_user, except: [:index, :show]

### fitnice must be found before being able to show, update or destroy

    before_action :set_fitnice, only: [:show, :update, :destroy]

### checks ownership of a fitnice 

    before_action :check_ownership, only: [:update, :destroy]

# before_action :check_ownership, only: [ :update, :destroy]

### this gets all fitnices available
    def index
        @fitnices = Fitnice.all
        render json: @fitnices
    end

### this creates a new fitnice

    def create 
        @fitnice = current_user.fitnices.create(fitnice_params)
        if @fitnice.errors.any?
            render json: @fitnice.errors, status: :unprocessable_entity
        else 
            render json: @fitnice, status: 201
        end
    end

## this shows our transformed fitnice

    def show 
        render json: @fitnice.transform_fitnice
    end

### this updates our fitnice by passing in params. 
### if there is any errors it will throw a unprocessabe entity
### if created succesfully then will return a 201

    def update
        @fitnice.update(fitnice_params)

        if @fitnice.errors.any?
            render json: @fitnice.errors, status: :unprocessable_entity
        else 
            render json: @fitnice, status: 201
        end
    end
### this destroys our fitnice

    def destroy 
        @fitnice.delete
        render json: 204
    end

    private 

### this where the params a created. passing in category_id, targetmusclecategoy_id 
### and also body

    def fitnice_params
        params.require(:fitnice).permit(:exercise_id, :targetmusclecategory_id, :category_id, :body)
    end

### this is how fitnices are found. finding fitnices by params id
### if no fitnice is found then returns a error

    def set_fitnice
        begin
        @fitnice = Fitnice.find(params[:id])
        rescue
            render json: {error: "fitnice not found"}, status: 404
        end
    end

### this is where our check_ownership is defined. but checking if our 
### user matches a user id. if there is not match we render a error

    def check_ownership 
        if current_user.id != @fitnice.user.id
            render json: {error: "you dont have permision to do that"}, status: 401
        end
    end
end
