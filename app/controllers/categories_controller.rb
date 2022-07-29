class CategoriesController < ApplicationController

    #index grabs all categories

    def index
        @categories = Category.all
        render json: @categories, status: 200
    end
end
