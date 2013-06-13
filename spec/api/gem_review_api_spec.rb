require 'spec_helper'

def app
  GemReviewApi
end

describe GemReviewApi do

  describe 'GET /rails/reviews' do
    it 'returns the last 10 reviews' do
      get '/rails/reviews'
      expect(last_response.status).to eq 200
      expect(last_response.body).to have_json_path('reviews')
    end

    context 'rails has a review' do
      let!(:review) { Review.create(text: 'I <3 Rails', gem_name: 'rails') }
      it 'contains the review' do
        get 'rails/reviews'
        expect(last_response.body).to have_json_size(1).at_path 'reviews'
        review_json = review.to_json(only: [:id, :text])
        expect(last_response.body).to be_json_eql(review_json).at_path 'reviews/0'
      end
    end
  end

  describe 'POST /gems/rails/reviews' do
    it 'creates a review' do
      expect do
        post '/rails/reviews', { text: 'I <3 Rails' }
      end.to change{ Review.count }.by(1)
    end
  end
end
