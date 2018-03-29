class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  embeds_one :isbn

end
