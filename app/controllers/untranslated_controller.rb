class UntranslatedController < ApplicationController
  before_action :authenticate_user!
  before_action :get_project
  def index
    @properties = @project.properties.where(en: "")
  end

  private
  def get_project
    @project = Project.find(params[:project_id])
  end
end
