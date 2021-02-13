class ParentsController < ApplicationController

    def show
        @parent = Parent.find(params[:id])
        if @parent
            render json: {parent: @parent}
        else
            render json: {status: 500, errors: ['parent not found']}
        end
    end

    def create
        @parent = Parent.new(parent_params)
        if @parent.save
            render json: {status: 'created', parent: @parent}
        else
            render json: {status: 500, errors: @parent.errors.full_messages}
        end
    end

    def update
        @parent = Parent.find(params[:id])
        @parent.update(parent_params)
        if @parent.valid?
            render json: {status: 'updated', parent: @parent}
        else
            render json: {status: 500, errors: @parent.errors.full_messages}
        end
    end

    def destroy
        @parent = Parent.find(params[:id])
        if @parent
            @parent.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @parent.errors.full_messages}
        end
    end

    def parent_params
        params.require(:parent).permit(
            :name,
            :email,
            :address,
            :password,
            :cell_phone,
            :balance,
            :string
        )
    end

end
