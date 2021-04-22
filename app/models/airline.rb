class Airline < ApplicationRecord
  has_many :reviews
  before_create :create_slug

  def create_slug
    self.slug = name.parameterize
  end
end
