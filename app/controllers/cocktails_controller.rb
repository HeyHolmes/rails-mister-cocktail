class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
    # redirect_to @coctails
  end

  def create
    @cocktail = Cocktail.create(new_cocktail)
    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

private
  def new_cocktail
    params.require(:cocktail).permit(:name)
  end
end

