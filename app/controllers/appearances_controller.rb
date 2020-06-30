class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end
    
    def create
        @appearance = Appearance.new(params.require(:appearance).permit(:rating, :guest_id, :episode_id))
        if @appearance.save
            redirect_to @appearance
        else
            flash[:message] = @appearance.errors.full_messages
            render :new
        end
    end
end
