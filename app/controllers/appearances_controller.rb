class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new 
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to episodes_path
            # redirect_to episode_path
            # ERROR: No route matches {:action=>"show", :controller=>"episodes"}, missing required keys: [:id] 
        else 
            flash[:message] = @appearance.errors.full_messages
            render :new
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
