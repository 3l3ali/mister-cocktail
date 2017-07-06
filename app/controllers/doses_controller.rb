class DosesController < ApplicationController

  def show
    @dose = Dose.find(parmas[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to coctail_dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:coctail_id, :ingredient_id, :description)
  end
end
