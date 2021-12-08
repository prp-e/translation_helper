class JsonOutController < ApplicationController
    before_action :find_project 

    def index
        details = []
        @project.properties.each do |property|
            property = {:label => property.label, :en => property.en, :fa => property.fa}
            details << property
        end 
        
        project_details = {:title => @project.name, :details => details}
        
        render :json => project_details
    end 

    private
    def find_project
        @project = Project.find(params[:project_id])
    end
end
