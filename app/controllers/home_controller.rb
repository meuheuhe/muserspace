class HomeController < ApplicationController
  def index
  end
  def upload
    @songwriting = Songwriting.new
    @cover = Cover.new
    @show = Show.new
  end
  def result

    if params[:query].nil?
      @songwriting = Songwriting.all
      @cover = Cover.all
      @show = Show.all
    else
      @songwriting = Songwriting.where("title LIKE ?", "%#{params[:query]}%")
      @cover = Cover.where("title LIKE ?", "%#{params[:query]}%")
      @show = Show.where("title LIKE ?", "%#{params[:query]}%")
    end
  end
  
end

  # private

  # def search(&block)    
  #   if params[:q]
  #     @results = yield if block_given?

  #     respond_to do |format|
  #       format.html # resources.html.erb
  #       format.json { render json: @results }
  #     end
  #   else
  #     redirect_to root_url, :notice => 'No search query was specified.'
  #   end
  # end


