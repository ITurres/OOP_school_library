class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def book=(book)
    book.add_rental(self)
    @book = book
  end

  def person=(person)
    person.add_rental(self)
    @person = person
  end

  def rental_to_s
    "Date: #{date}, Book: \"#{book.title}\" By #{book.author}, Rented by: #{person.name}"
  end
end
