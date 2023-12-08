def sort_numbers(numbers, order)
  case order
  when "asc"
    numbers.sort!
  when "desc"
    numbers.sort!.reverse!
  else
    return
  end

  puts "Відсортований список: #{numbers}"
end

def get_user_input
  print "Введіть числа через пробіл (наприклад, 5 2 8): "
  input = gets.chomp
  numbers = input.split.map(&:to_i)

  return numbers
end

def get_sort_order
  print "Введіть порядок сортування (asc - зростання, desc - спадання): "
  order = gets.chomp.downcase

  return order
end

numbers = get_user_input
order = get_sort_order

sort_numbers(numbers, order)
