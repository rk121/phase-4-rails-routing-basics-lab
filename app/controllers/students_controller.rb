class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        students = students.sort {|a,b| b.grade <=> a.grade}
        render json: students
    end

    def highest_grade 
        highest_grade_student = Student.all.order('grade DESC').first
        render json: highest_grade_student
    end
end
