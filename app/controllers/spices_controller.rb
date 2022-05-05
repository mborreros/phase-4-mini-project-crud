class SpicesController < ApplicationController

    # GET /spices
    def index
      all_spices = Spice.all
      render json: all_spices, status: :ok
    end
  
    # POST /spices
    def create
      new_spice = Spice.create(spice_params)
      render json: new_spice, status: :created
    end
  
    # PATCH /spices/:id
    def update
      found_spice = find_spice
      found_spice.update(spice_params)
      render json: found_spice, status: :accepted
    end
  
    # DELETE /spices/:id
    def destroy
      found_spice = find_spice
      found_spice.destroy
      head :no_content
    end
  
    private
    def find_spice
      Spice.find_by(id: params[:id])
    end
  
    def spice_params
      params.permit(:title, :image, :description, :notes, :rating)
    end

end
