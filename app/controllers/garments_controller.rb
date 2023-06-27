class GarmentsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @garments = current_user.garments
    end
  
    def show
      @garment = current_user.garments.find(params[:id])
    end
  
    def new
      @garment = current_user.garments.build
    end
  
    def create
      @garment = current_user.garments.build(garment_params)
      if @garment.save
        redirect_to garments_path, notice: 'Garment was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def garment_params
      params.require(:garment).permit(:name, :brand, :size, :date_of_purchase)
    end
end
  