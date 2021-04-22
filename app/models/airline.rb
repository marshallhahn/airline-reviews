class Airline < ApplicationRecord
  has_many :reviews
  before_create :create_slug

  def create_slug
    self.slug = name.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
