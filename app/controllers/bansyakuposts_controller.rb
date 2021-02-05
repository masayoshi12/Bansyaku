class BansyakupostsController < ApplicationController
  def index
    @bansyakuposts = Bansyakupost.includes(:user)
  end

  def new
    @bansyakupost = Bansyakupost.new
  end
  
  def create
    @bansyakupost = Bansyakupost.new(bansyakupost_params)
    if @bansyakupost.save
      redirect_to root_path
    else
      render :new
    end
  end
  private
  
  def bansyakupost_params
    params.require(:bansyakupost).permit(:image).merge(user_id: current_user.id)
  end
  
end
