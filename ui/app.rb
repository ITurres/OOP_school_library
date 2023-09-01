require_relative 'dependencies'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books
    # ? code
  end

  def list_all_people
    # ? code
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
    # ? code
  end

  def create_book_rental
    # ? code
  end

  def list_all_rentals(person_id)
    # ? code
  end

  def exit_program
    puts 'Thanks for using School Library App!'
    exit(0)
  end
end
