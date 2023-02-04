class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show update destroy ]
  # resources :set_project, only: %i[ show update destroy ]
  # resources :projects

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    # @location = Location.find(params[:location_id])
    @project = Project.new(project_params)
    # @project = @location.products.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :priority, :description, :supply1, :supply2, :supply3, :supply4, :supply5, :supply6, :supply7, :supply8, :supply9, :supply10, :estimate, :start, :completion, :location_id)
    end
end
