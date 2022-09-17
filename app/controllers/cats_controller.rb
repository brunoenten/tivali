class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    cat_params = params.require(:cat).permit(:main_name, :chip_serial, :picture, :longitude, :latitude)
    new_cat = Cat.new(cat_params)
    new_cat.set_picture_from_io(cat_params[:picture])
    new_cat.set_base_location(cat_params[:latitude].to_f, cat_params[:longitude].to_f)
    new_cat.creator = current_user
    new_cat.main_protector = current_user
    new_cat.save
    redirect_to action: :index
  end

  def show
    @cat = Cat.find(params[:id])
  end
end
