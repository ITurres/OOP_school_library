require_relative 'app'
require_relative '../helpers/setup_options'

def main
  app = App.new
  options = setup_options

  puts 'Welcome to School Library App!'
  puts

  run_options(options, app)
end

main
