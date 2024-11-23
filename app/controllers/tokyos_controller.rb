class TokyosController < ApplicationController
    before_action :authenticate_user!

    def index
        @tokyos = tokyo.all
    end

    def new
        @tokyo = Tokyo.new
    end

    def create
        tokyo = Tokyo.new(tokyo_params)
        tokyo.user_id = current_user.id 
        if tokyo.save
            redirect_to :action => "top"
        else
            redirect_to :action => "new"
        end
    end

    def snow
        @tokyo = Tokyo.find(params[:id])
    end

    def edit
        @tokyo = Tokyo.find(params[:id])
    end

    def update
        tokyo = Tokyo.find(params[:id])
        if tokyo.update(tokyo_params)
            redirect_to :action => "show", :id => tokyo.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        tokyo = Tokyo.find(params[:id])
        tokyo.destroy
        redirect_to action: :index
    end

    private
    def tokyo_params
        params.require(:tokyo).permit(:name, :unit, :lecture, :mentor)
    end
end
