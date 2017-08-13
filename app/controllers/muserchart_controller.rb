class MuserchartController < ApplicationController
  before_action :upvote, except: :index
  def index
    @songwriting = Songwriting.all
    @cover = Cover.all
    @show = Show.all
  end
end
