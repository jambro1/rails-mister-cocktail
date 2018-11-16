class DosesController < ApplicationController


  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
      @dose = Dose.new(dose_params)
      @dose.cocktail = Cocktail.find(params[:cocktail_id])
      if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
      else :new
      end
  end

  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.update(dose_params)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
