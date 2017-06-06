class Link < ApplicationRecord
  validates_presence_of(:url)

  scope :hot, -> { order("links.read_total DESC").limit(10) }
end
