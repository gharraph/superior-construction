class ProjectsController < ApplicationController

  def index
    @projects = Project.paginate(page: params[:page])
  end

  def show
    @project = Project.find(params[:id])
    @users = @project.users.paginate(page: params[:page], per_page: 5)
    @materials = @project.materials.paginate(page: params[:page], per_page: 5)
  end
end
