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
    params.require(:bansyakupost).permit( :sake_name, :sake_id, :warimono_id, :onetumami_name, :onetumami_id, :onetumami_recipe, :twotumami_name, :twotumami_id, :twotumami_recipe, :user_comment, :image).merge(user_id: current_user.id)
  end
  
end
