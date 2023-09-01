require_relative 'dependencies'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books(with_index: false)
    @books.each_with_index do |book, index|
      puts "#{with_index ? "#{index})" : ''} Title: #{book.title}, Author: #{book.author}."
    end
    puts
  end

  def list_all_people(with_index: false)
    @people.each_with_index do |person, index|
      person_type = person.class.name

      case person_type
      when 'Student'
        puts "#{with_index ? "#{index})" : ''}[Student] Name: #{person.name}, " \
             "ID: #{person.id}, Age: #{person.age}"
      when 'Teacher'
        puts "#{with_index ? "#{index})" : ''}[Teacher] Name: #{person.name}, " \
             "ID: #{person.id}, Age: #{person.age}"
      end
    end
    puts
  end

  def create_teacher_or_student
    puts 'Do you want to create a (1) student or (2) teacher? [Input the number]:'

    input = gets.chomp.to_i

    validated_inputs = validate_inputs
    age = validated_inputs[:age]
    name = validated_inputs[:name]

    if input == 1
      print 'Has parent permission? [Y/N]:'
      parent_permission = gets.chomp.downcase == 'y'

      student = Student.new(age, name, parent_permission)
      @people.push(student)

      puts "Student #{student.name} successfully created!!"
    elsif input == 2
      print 'Specialization: '
      specialization = gets.chomp

      teacher = Teacher.new(age, name, specialization)
      @people.push(teacher)

      puts "Teacher #{teacher.name} successfully created!!"
    else
      puts 'Invalid option, please try again.'
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts "Book #{book.title} successfully created!!"
  end

  def create_book_rental
    # ? code
    puts 'Select a book from the following list by number'
    list_all_books(with_index: true)

    book_index = gets.chomp.to_i
    book = @books[book_index]

    puts 'Select a person from the following list by number (not id)'
    list_all_people(with_index: true)

    person_index = gets.chomp.to_i
    person = @people[person_index]

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, book, person)
    @rentals.push(rental)

    puts 'Rental created successfully!!'
  end

  def list_all_rentals(person_id)
    # ? code
  end

  def exit_program
    puts 'Thanks for using School Library App!'
    exit(0)
  end
end
