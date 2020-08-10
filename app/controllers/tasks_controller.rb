# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render :index, status: :created
    else
      render_error
    end
  end

  def update
    if @task.update(task_params)
      render :index
    else
      render_error
    end
  end

  def destroy
    @task.destroy
    head :no_content
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def render_error
    render json: { errors: @task.errors.full_messages },
           status: :unprocessable_entity
  end
end
