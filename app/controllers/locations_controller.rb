class LocationsController < ApplicationController

    def show
        @location = Location.find(params[:id])
        if @location
            render json: {location: @location}
        else
            render json: {status: 500, errors: ['location not found']}
        end
    end

    def create
        @location = Location.new(location_params)
        if @location.save
            render json: {status: 'created', location: @location}
        else
            render json: {status: 500, errors: @location.errors.full_messages}
        end
    end

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        if @location.valid?
            render json: {status: 'updated', parent: @location}
        else
            render json: {status: 500, errors: @location.errors.full_messages}
        end
    end

    def destroy
        @location = Location.find(params[:id])
        if @location
            @location.destroy
            render json: {status: 'deleted'}
        else
            render json: {status: 500, errors: @location.errors.full_messages}
        end
    end

    def location_params
        params.require(:location).permit(:name, :address)
    end

end
