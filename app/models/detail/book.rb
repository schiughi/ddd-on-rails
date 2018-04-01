class Detail::Book < Aggregator
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  embeds_one :isbn
  embeds_many :authors
  embeds_one :publisher

  validates :title, presence: true, length: { in: 1..100 }
end
