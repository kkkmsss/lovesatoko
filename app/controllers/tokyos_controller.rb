class TokyosController < ApplicationController
    before_action :authenticate_user!

    def index
        @tokyos = Tokyo.all
    end

    def new
        @tokyo = Tokyo.new
    end

    def create
        tokyo = Tokyo.new(tokyo_params)
        tokyo.user_id = current_user.id 
        if tokyo.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    private
    def tokyo_params
        params.require(:tokyo).permit(:name, :unit, :body)
    end
end
