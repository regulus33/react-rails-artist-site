class Api::V1::ProjectsController < Api::V1::BaseController
  def index
    img_sources = Dir.entries("public/projects").map do |filename|  
      # "public/projects/#{filename}"
      if filename != '.' && filename != '..' && filename != nil && filename != '.DS_Store'
         "projects/#{filename}"
      end
    end
    respond_with img_sources.flatten
  end

  def create
    respond_with :api, :v1, Project.create(project_params)
  end

  def destroy
    respond_with Project.destroy(params[:id])
  end

  def update
    project = Project.find(params["id"])
    project.update_attributes(project_params)
    respond_with project, json: project
  end

  private

  def project_params
    params.require(:project).permit(:id, :title, :description, :url)
  end
end