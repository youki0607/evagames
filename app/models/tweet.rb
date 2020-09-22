class Tweet < ApplicationRecord
  has_one_attached :image

  validates :tweet_text, presence: true
end
