class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :new, :create]

  def show
    # @dose = @cocktail.doses.find(params[:id])
    @dose = Dose.find(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.new(dose_params)

    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to @dose.cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
