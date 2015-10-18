class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def sort
    params[:order].each do |key,value|
      Task.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  # GET /tasks
  def index
    @tasks = Task.all
    @incomplete = Task.where(complete: false)
    @complete = Task.where(complete: true)
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.create!(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end

    # if @task.save
    #   redirect_to @task, notice: 'Task was successfully created.'
    # else
    #   render :new
    # end
  end

  def complete
    @task = Task.find(params[:id])
    @task.update(complete: true)
    @id = params[:id]
  end

  # PATCH/PUT /tasks/1
  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
    # if @task.update(task_params)
    #   redirect_to @task, notice: 'Task was successfully updated.'
    # else
    #   render :edit
    # end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :description, :priority, :complete, :due_on)
    end
end
