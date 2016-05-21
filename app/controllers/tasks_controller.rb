class TasksController < ApplicationController
  def index
    @task = Task.order("RANDOM()").first
  end

  def create
    @task = Task.create(task_params)
    #if @task.invalid?
      #flash[:error] = 'Try again.'
    #end
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:item)
  end
end
