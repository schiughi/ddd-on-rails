module Repositories
  class Google::BookRepository < Detail::BookRepository
    class << self
      def search(query , client: Clients::Google::BooksClient.new)
        response = client.get(query)
        response["items"].map do |item|
          volume = item["volumeInfo"]
          Detail::BookFactory.build(
            titile: volume["title"],
            description: volume["description"],
            author_names: volume.fetch("authors", []),
            publisher_name: volume["publisher"],
            isbn_code: volume["industryIdentifiers"].last["identifier"]
          )
        end
      end
    end
  end
end
