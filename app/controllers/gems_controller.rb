class GemsController < ApplicationController
  def show
    @gem_name = params[:id]
    @gem = Gems.info @gem_name
    @review = Review.new
    @reviews = Reviews.new(@gem_name)
  end
end
