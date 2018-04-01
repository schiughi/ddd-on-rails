class Detail::BookFactory
  def self.build(option = {})
    authors = option.fetch(:author_names, []).map do |name|
      Detail::Author.new(name: name)
    end

    Detail::Book.new(title: option[:title],
             description: option[:description],
             isbn: Detail::Isbn.new(code: option[:isbn_code]),
             publisher: Detail::Publisher.new(name: option[:publisher_name]),
             authors: authors)
  end
end
