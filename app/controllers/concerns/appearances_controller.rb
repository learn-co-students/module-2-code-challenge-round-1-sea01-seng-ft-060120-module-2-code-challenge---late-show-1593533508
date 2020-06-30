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
@appearance = Appearance.new(appearance_params)
 @appearance.save
    
end
end

private

def appearance_params
params.require(:appearance).permit(:guest_id, :episode_id)
end

