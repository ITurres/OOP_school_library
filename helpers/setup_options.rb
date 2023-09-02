def setup_options
  {
    1 => { name: 'List all books', method: :list_all_books },
    2 => { name: 'List all people', method: :list_all_people },
    3 => { name: 'Create a teacher or student', method: :create_teacher_or_student },
    4 => { name: 'Create a book', method: :create_book },
    5 => { name: 'Create a book rental', method: :create_book_rental },
    6 => { name: 'List all rentals for a given person ID', method: :list_all_rentals },
    7 => { name: 'Exit', method: :exit_program }
  }
end
