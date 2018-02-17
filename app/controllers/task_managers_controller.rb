class TaskManagersController < ApplicationController
  before_action :set_task_manager, only: [:show, :edit, :update, :destroy]

  # GET /task_managers
  # GET /task_managers.json
  def index
    @task_managers = TaskManager.all
  end

  # GET /task_managers/1
  # GET /task_managers/1.json
  def show
  end

  # GET /task_managers/new
  def new
    @task_manager = TaskManager.new
  end

  # GET /task_managers/1/edit
  def edit
  end

  # POST /task_managers
  # POST /task_managers.json
  def create
    @task_manager = TaskManager.new(task_manager_params)

    respond_to do |format|
      if @task_manager.save
        format.html { redirect_to @task_manager, notice: 'Task manager was successfully created.' }
        format.json { render :show, status: :created, location: @task_manager }
      else
        format.html { render :new }
        format.json { render json: @task_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_managers/1
  # PATCH/PUT /task_managers/1.json
  def update
    respond_to do |format|
      if @task_manager.update(task_manager_params)
        format.html { redirect_to @task_manager, notice: 'Task manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_manager }
      else
        format.html { render :edit }
        format.json { render json: @task_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_managers/1
  # DELETE /task_managers/1.json
  def destroy
    @task_manager.destroy
    respond_to do |format|
      format.html { redirect_to task_managers_url, notice: 'Task manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_manager
      @task_manager = TaskManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_manager_params
      params.require(:task_manager).permit(:title)
    end
end
