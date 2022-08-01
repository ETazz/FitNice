class TargetmusclecategoriesController < ApplicationController

    #index grabs all targetmusclecategories

    def index
        @targetmusclecategories = Targetmusclecategory.all
        render json: @targetmusclecategories, status: 200
    end
end
