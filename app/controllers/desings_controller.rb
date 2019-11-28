class DesingsController < ApplicationController
    def new
    end

    def create
        #render plain: params[:desing].inspect
    end

    def show
        @image = Image.find params [:season]
        @image = Image.find params [:climate]
    end

    private

    def design_params
        params.require(:desing).permit(:season, :climate)
    end

end
