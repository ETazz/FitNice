class TargetmusclecategoriesController < ApplicationController
    def index
        @targetmusclecategories = Targetmusclecategory.all
        render json: @targetmusclecategories, status: 200
    end
end
