module Clients
  class Google::BooksClient < BaseClient
    def initialize
      super("https://www.googleapis.com")
    end

    def get(query = {})
      response = connection.get("/books/v1/volumes" , query)
      to_hash(response.body)
    end
  end
end
