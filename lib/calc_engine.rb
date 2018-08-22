class CalcEngine


  def run_calculator
    puts "which calculator do you need? 1-basic 2-advanced 3-Bmi 4-Trip"
    choice = gets.chomp
    if choice == "1"
  puts "Choose operation. 1-Add 2-Subtract 3-multiply 4-Divide"
    operation = gets.chomp
    if operation == "1"
      puts 'What is the first number?'
      num1 = gets.chomp.to_f
      puts 'What is the second number?'
      num2 = gets.chomp.to_f
      puts add_two_numbers(num1, num2)
    elsif operation == "2"
      puts 'What is the first number?'
      num1 = gets.chomp.to_f
      puts 'What is the second number?'
      num2 = gets.chomp.to_f
      puts subtract_two_numbers(num1, num2)
    elsif operation == "3"
      puts 'What is the first number?'
      num1 = gets.chomp.to_f
      puts 'What is the second number?'
      num2 = gets.chomp.to_f
      puts multiply_two_numbers(num1, num2)
    elsif operation == "4"
      puts 'What is the first number?'
      num1 = gets.chomp.to_f
      puts 'What is the second number?'
      num2 = gets.chomp.to_f
      puts divide_two_numbers(num1, num2)
    else
      puts "please enter one of the choices"
      end
    elsif choice == "2"
      puts "press 1 for power or 2 for square root"
      advanced_choice = gets.chomp
      if advanced_choice == "1"
        puts "what is the first number"
        num1 = gets.chomp.to_f
        puts "what is the second number"
        num2 = gets.chomp.to_f
        puts power(num1,num2)
      else advanced_choice == "2"
        puts "enter number to see square root"
        num1 = gets.chomp.to_i
        puts square_root(num1)
      end
    elsif choice == "3"
      puts "press 1 for metric or 2 for imperial"
      advanced_choice = gets.chomp
      if advanced_choice == "1"
      puts "enter height:"
      height = gets.chomp.to_f
      puts "enter weight:"
      weight = gets.chomp.to_f
      puts metric(height, weight)
    elsif advanced_choice == "2"
      puts "enter height:"
      height = gets.chomp.to_f
      puts "enter weight:"
      weight = gets.chomp.to_f
      puts imperial(height, weight)
    end
  elsif choice == "4"
    puts "enter distance"
    distance = gets.chomp.to_f
    puts "enter fuel efficiency (mpg)"
    fuel = gets.chomp.to_f
    puts "enter price"
    price = gets.chomp.to_f
    puts "enter speed"
    speed = gets.chomp.to_f
    puts trip(distance,fuel,price,speed)

  end

  end

  def add_two_numbers(num1, num2)
    num1 + num2
  end

  def subtract_two_numbers(num1, num2)
    num1 - num2
  end

  def multiply_two_numbers(num1, num2)
    num1 * num2
  end

  def divide_two_numbers(num1, num2)
    num1 / num2
  end

  def power (num1, num2)
    num1 ** num2
  end

  def square_root (num1)
    Math.sqrt(num1)
  end

  def metric(height, weight)

    weight / (height *height)
  end

  def imperial(height, weight)
    (weight / (height * height)) * 703
  end

  def trip(distance,fuel,price,speed)
    if speed > 60
      mpg = (speed % 60 * 2)
      reduced_mpg = fuel -  mpg
    else
      (distance/fuel)*price
    end
  end

end

# calc = CalcEngine.new()
# calc.run_calculator
