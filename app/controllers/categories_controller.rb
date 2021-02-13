class CategoriesController < ApplicationController

    def show
        @category = Category.find(params[:id])
        if @category
            render json: {caregory: @category}
        else
            render json: {status: 500, errors: ['category not found']}
        end
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            render json: {status: 'created', category: @category}
        else
            render json: {status: 500, errors: @category.errors.full_messages}
        end
    end

    def update
        @category = Category.find(params[:id])
        @category.update(category_params)
        if @category.valid?
            render json: {status: 'updated', category: @category}
        else
            render json: {status: 500, errors: @category.errors.full_messages}
        end
    end

    def destroy
        @category = Category.find(params[:id])
        if @category
            @category.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @category.errors.full_messages}
        end
    end

    def category_params
        params.require(:category).permit(:name)
    end

end
