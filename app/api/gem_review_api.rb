class GemReviewApi < Grape::API
  version :v1, using: :header, vendor: :gemview
  format :json

  params do
    requires :gem_name, type: String, desc: 'Gem Name.'
  end
  route_param :gem_name do
    desc 'Returns a list of reviews for a gem'
    get :reviews do
      reviews = Reviews.new(params[:gem_name])
      reviews.to_json
    end

    desc 'Create a new review'
    params do
      requires :text, type: String, desc: 'Gem Review.'
    end
    post :reviews do
      Reviews.new(params[:gem_name]).review(params[:text])
    end
  end
end
