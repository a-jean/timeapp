class TasksController < ApplicationController

  def new
    @task = Task.new
    render :_task_form
    @task.save
end

  def create
    Task.create(params.require(:task).permit( :activity,  :description, :completed, :start_time, :end_time))
    redirect_to sheets_path
  end

  def index
    redirect_to sheets_path
  end

end
