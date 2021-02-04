class BansyakupostsController < ApplicationController
  def index
    @bansyakuposts = Bansyakupost.includes(:user)
  end

  private
  
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end
