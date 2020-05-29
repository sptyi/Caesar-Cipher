# frozen_string_literal: true

# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

puts 'Enter a statement to be encrypted:'
statement = gets.chomp
modified_statement = statement.downcase.split.join.split('')

shift_factor = nil
until shift_factor&.nonzero?
  puts 'Now, enter a number to use as the key:'
  shift_factor = gets.chomp.to_i
end

alphabet = ('a'..'z').to_a
new_letters = ''

modified_statement.each do |character|
  new_letters += alphabet.[](alphabet.index(character) + shift_factor)
end

encrypted_letters = new_letters.split('')
encrypted_statement = ''

letter = 0
if statement[letter] >= 'A' && statement[letter] <= 'Z'
  encrypted_letters.each do |letter|
    encrypted_statement += encrypted_letters[letter].upcase
  end
else
  encrypted_letters.each do |letter|
    encrypted_statement += encrypted_letters[letter]
  end
end

p encrypted_statement
