class LegosController < ApplicationController
  def index
    @legos = Lego.all
  end

  def show
    @lego = Lego.find(params[:id])
  end

  def new
    @lego = Lego.new
  end

  def create
    
    @lego = Lego.create(params.require(:lego).permit(:name, :color, :theme, :gender, :trump ))
    redirect_to lego_path(@lego)
  end

  def edit
    @lego = Lego.find(params[:id])
    
  end

  def update
    @lego = Lego.find(params[:id])
    @lego.update(params.require(:lego).permit(:name, :color, :theme, :gender, :trump ))
    redirect_to lego_path(@lego)

  end

  def delete

  end
end
