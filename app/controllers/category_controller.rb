class CategoryController < ApplicationController
    before_action :log_impression, :only=> [:songwriting_info]
  def songwriting
    @songwriting = Songwriting.all
  end

  def cover
    @cover = Cover.all
 
  end

  def show
    @show = Show.all
  end
  
  def songwriting_view
    render :layout => 'newlayout'

  end
  
  def songwriting_info
    @songwriting = Songwriting.all
  end
  
  def cover_info
    @cover = Cover.all
  end
  
  def show_info
    @show = Show.all
  end
    def like 
    Like.create(user_id: current_user.id, songwriting_id: params[:id])
    redirect_to :back
  end
    
  def like_cancel
    Like.find_by(user_id: current_user.id, songwriting_id: params[:id]).destroy
    redirect_to :back
  end
    def log_impression
    @songwriting = Songwriting.find(params[:id])
    # this assumes you have a current_user method in your authentication system
    @songwriting.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end

end
