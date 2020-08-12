class CamperActivitiesController < ApplicationController
    def new
        @camper_activity = CamperActivity.new
    end

    def create
        @camper_activity = CamperActivity.create(camper_activity_params)
        redirect_to camper_path(camper_activity_params[:camper_id])
    end

    private

    def camper_activity_params
        params.require(:camper_activity).permit(:camper_id, :activity_id, :time)
    end
end
