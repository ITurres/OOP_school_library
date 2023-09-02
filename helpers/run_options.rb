def run_options(options, app)
  exit_program = true
  while exit_program
    puts 'Please, select an option by entering a number:'

    options.each do |option_number, option|
      puts "#{option_number} - #{option[:name]}"
    end

    selected_option = gets.chomp.to_i

    if options.key?(selected_option)
      if options[selected_option][:method] == :exit_program
        app.send(options[selected_option][:method])
        exit_program = false
      else
        puts app.send(options[selected_option][:method]) # * calls the method with the given name
      end
    else
      puts 'Invalid option, please try again'
      puts
    end
  end
end
