class ProjectsController < ApplicationController
  
  respond_to :html, :xml, :json
  
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_with @project
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_with @project
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_with @project
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

    respond_with @project
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_with @project
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_with @project
  end
end
