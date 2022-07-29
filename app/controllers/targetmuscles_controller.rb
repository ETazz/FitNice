class TargetmusclesController < ApplicationController
    def index
        @targetmuscles = Targetmuscle.all
        render json: @targetmuscles, status: 200
    end
end