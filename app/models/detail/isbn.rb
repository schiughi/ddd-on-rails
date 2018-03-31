class Detail::Isbn < ValueObject
  include Mongoid::Document

  field :code, type: String
  embedded_in :book

  validates :code, presence: true,
                   format: { with: /\A(\d{10}|\d{13})\Z/ }
end
