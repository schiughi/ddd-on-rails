class Clients::BaseClient
  def initialize(url)
    @connection = Faraday::Connection.new(:url => url) do |faraday|
      faraday.request :url_encoded
      faraday.response :raise_error
      faraday.adapter Faraday.default_adapter
    end
  end

  def to_hash(body)
    HashWithIndifferentAccess.new(JSON.parse(body))
  end

  protected
  attr_reader :connection
end
