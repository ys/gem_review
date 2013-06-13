class ReviewsController < ApplicationController
  def create
    Reviews.new(gem_name).review(review_text)
    redirect_to gem_path(gem_name)
  end

  def review_text
    params[:text] || params[:review][:text]
  end

  def gem_name
    params[:gem_id]
  end
end
