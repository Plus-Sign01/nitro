class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create 
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:project_name, :project_place, :project_period, :content, :project_owner)
  end
end
