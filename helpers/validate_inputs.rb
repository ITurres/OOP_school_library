def validate_inputs
  validated_inputs = {}

  validated_inputs[:age] = validate_age_input
  validated_inputs[:name] = validate_name_input

  validated_inputs
end

def validate_age_input
  age = nil

  while age.nil? || age < 1
    print 'Age: '
    input = gets.chomp

    age = begin
      Integer(input)
    rescue StandardError
      nil
    end
    puts 'Age must be a number or > 1' if age.nil? || age < 1
  end

  age
end

def validate_name_input
  name = nil

  while name.nil? || name.empty? || name.to_i.to_s == name
    print 'Name: '
    name = gets.chomp
    puts 'Name must be a string' if name.nil? || name.empty? || name.to_i.to_s == name
  end

  name
end
