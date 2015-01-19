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

  def create
    @project = Project.new(params[:project])
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
    params.require(:project).permit(:project_name, :project_place, :project_start_time, :project_end_time, :content, :project_owner)
  end
end
