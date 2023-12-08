def generate_password(length)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']

  password = Array.new(length) { characters.sample }.join
  return password
end

def get_password_length
  print "Введіть довжину паролю: "
  length = gets.chomp.to_i

  return length
end

password_length = get_password_length
password = generate_password(password_length)

puts "Ваш випадковий пароль: #{password}"
