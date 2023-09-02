class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    new_rental = Rental.new(date, self, person)
    @rentals << new_rental unless @rentals.include?(new_rental)
  end
end
