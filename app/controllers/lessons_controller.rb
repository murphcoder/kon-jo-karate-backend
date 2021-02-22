class LessonsController < ApplicationController

    def show
        @lesson = Lesson.find(params[:id])
        if @lesson
            render json: {lesson: @lesson}
        else
            render json: {status: 500, errors: ['location not found']}
        end
    end

    def create
        @lesson = Lesson.new(lesson_params)
        if @lesson.save
            render json: {status: 'created', lesson: @lesson}
        else
            render json: {status: 500, errors: @lesson.errors.full_messages}
        end
    end

    def update
        @lesson = Lesson.find(params[:id])
        @lesson.update(lesson_params)
        if @lesson.valid?
            render json: {status: 'updated', parent: @lesson}
        else
            render json: {status: 500, errors: @lesson.errors.full_messages}
        end
    end

    def destroy
        @lesson = Lesson.find(params[:id])
        if @lesson
            @lesson.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @lesson.errors.full_messages}
        end
    end

    def lesson_params
        params.require(:location).permit(:price, :start_time, :end_time, :start_date, :end_date)
    end

end
