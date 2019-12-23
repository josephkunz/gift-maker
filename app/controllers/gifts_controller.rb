class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :update, :destroy]

  def index
    @gifts = Gift.all
  end

  def show
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)

    if @gift.save!
      redirect_to gift_path(@gift)
    else
      render "new"
    end
  end

  def edit
    @gift = Gift.new
  end

  def update
    @gift.update(gift_params)
    @gift.save
    redirect_to gift_path(@gift)
  end

  def destroy
    @gift.destroy
    redirect_to gifts_path
  end

  private

  def gift_params
    params.require(:gift).permit(:id, :title, :description, :price, :occasion)
  end

  def set_gift
    @gift = Gift.find(params[:id])
  end
end
