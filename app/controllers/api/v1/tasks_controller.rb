module Api::V1
  class TasksController < ApplicationController

    def index
      @tasks = Task.all.order("created_at DESC")
      render json: @tasks
    end

    def create
      @task = Task.create(task_params)
      render json: @task
    end

    def update
      @task = Task.find(params[:id])
      @task.update_attributes(task_params)
      render json: @task
    end

    def destroy
      @task = Task.find(params[:id])
      if @task.destroy
        head :no_content, status: :ok
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    private

    def task_params
      params.require(:task).permit(:title, :body)
    end

  end
end
