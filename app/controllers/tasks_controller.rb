class TasksController < ApplicationController

  def new
    @task = Task.new
    render :_task_form
    @task.save
  end

  def create
    @task = Task.new(params.require(:task).permit( :activity,  :description, :completed, :start_time, :end_time))
    if @task.save
    redirect_to sheets_path
  else
    flash[:alert] = "You have errors"
    render :action => :_task_form
  end
  end



  def index
    redirect_to sheets_path
  end
  end
