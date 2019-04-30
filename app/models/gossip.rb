class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_gossip_links
  has_many :tags, through: :tag_gossip_links
  validates :title, length: { minimum: 3 }, length: { maximum: 14 }, presence: true
  validates :content, presence: true
end
