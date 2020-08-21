class DosesController < ApplicationController

  # GET /cocktails/new
 def new
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new
      end

  # POST /doses
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(set_dose)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

    def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        redirect_to cocktail_path
      end
  end

  private
  def set_dose
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
