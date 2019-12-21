class GiftsController < ApplicationController
  def index
    @gifts = Gift.all
  end

  def show
    @gift = Gift.find(params[:id])
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to gift_path(@gift)
  end

end



private

def gift_params
  params.require(:gift).permit(:id
end
