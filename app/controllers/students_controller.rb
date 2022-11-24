class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students, except: [:created_at, :updated_at]
    end

    def grades
        students = Student.all.order(grade: :desc )
        render json: students, except: [:created_at, :updated_at]
    end

    def highest_grade
        student = Student.all.order(grade: :desc).first
        render json: student, except: [:created_at, :updated_at]
    end
end
