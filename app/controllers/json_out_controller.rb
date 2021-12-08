class JsonOutController < ApplicationController
    before_action :find_project 

    def index
        render json: @project.to_json
    end 

    private
    def find_project
        @project = Project.find(params[:project_id])
    end
end
