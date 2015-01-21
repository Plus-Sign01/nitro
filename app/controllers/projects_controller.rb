class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: '作成しました'
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

private

  def project_params
    params.require(:project).permit(:project_name, :project_place, :start_time, :end_time, :content, :company_name, :company_owner_name)
  end
end
