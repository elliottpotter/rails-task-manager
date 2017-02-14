class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy, :mark_as_done]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path(@task)
  end

  def edit
  end

  def update
  end

  def destroy
    @task.delete
    @task.save
    redirect_to tasks_path
  end

  def mark_as_done
    @task.completed = true
    @task.save
    redirect_to tasks_path
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description)
  end


end
