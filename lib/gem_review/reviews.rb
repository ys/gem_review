module GemReview
  class Reviews
    include Enumerable

    delegate :each, to: :_reviews

    def initialize(gem_name)
      @gem_name = gem_name
    end

    def review(text)
      Review.create(text: text, gem_name: @gem_name)
    end

    def to_json
      ActiveModel::ArraySerializer.new _reviews, root: :reviews
    end

    def to_ary
      _reviews
    end

    def _reviews
      Review.where(gem_name: @gem_name).limit(10)
    end
  end
end
