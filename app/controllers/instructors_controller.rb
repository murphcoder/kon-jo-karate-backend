class InstructorsController < ApplicationController

    def show
        @instructor = Instructor.find(params[:id])
        if @instructor
            render json: {intructor: @instructor}
        else
            render json: {status: 500, errors: ['instructor not found']}
        end
    end

    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            render json: {status: 'created', instructor: @instructor}
        else
            render json: {status: 500, errors: @instructor.errors.full_messages}
        end
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        if @instructor.valid?
            render json: {status: 'updated', instructor: @instructor}
        else
            render json: {status: 500, errors: @instructor.errors.full_messages}
        end
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        if @instructor
            @instructor.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @instructor.errors.full_messages}
        end
    end

    def instructor_params
        params.require(:instructor).permit(
            :name,
            :password,
            :description,
            :cell_phone,
            :email,
            :admin,
            :recovery
        )
    end

end
