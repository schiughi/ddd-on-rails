class Detail::Publisher < ValueObject
  include Mongoid::Document

  field :name, type: String
  embedded_in :book

  validates :name, presence: true
end
