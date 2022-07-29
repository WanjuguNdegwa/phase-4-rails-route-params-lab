class StudentsController < ApplicationController

  def index
    students = if params[:name]
                  students = Student.by_name(params[:name])
                else
                  Student.all
                end

    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
