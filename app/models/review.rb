class Review < ActiveRecord::Base
  def active_model_serializer
    Serializers::Review
  end
end
