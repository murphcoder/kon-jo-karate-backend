class StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
        if @student
            render json: {student: @student}
        else
            render json: {status: 500, errors: ['user not found']}
        end
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: {status: 'created', student: @student}
        else
            render json: {status: 500, errors: @student.errors.full_messages}
        end
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        if @student.valid?
            render json: {status: 'updated', student: @student}
        else
            render json: {status: 500, errors: @student.errors.full_messages}
        end
    end

    def destroy
        @student = Student.find(params[:id])
        if @student
            @student.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @student.errors.full_messages}
        end
    end

    def student_params
        params.require(:student).permit(:name)
    end

end
