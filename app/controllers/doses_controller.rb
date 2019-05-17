class DosesController < ApplicationController
def new
  @dose = Dose.new
  @cocktail = Cocktail.find(params[:cocktail_id])
end

def create
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose = Dose.new(new_dose)
  @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/`'
    end
  end

  def new_dose
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
