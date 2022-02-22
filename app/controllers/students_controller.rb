class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        mygrades = Student.order(grade: desc)
        render json: mygrades
    end
end
