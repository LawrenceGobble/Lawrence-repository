class Api::MeetingController < ApplicationController

    def index 
    	@meeting = Meeting.first
    	respond_to do |format|
    		format.json {
    			@meeting
                render json: {"success":true , "meeting":@meeting} 
    		}
        end
    end

end