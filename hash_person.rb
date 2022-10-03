# Ask for a name, age, and occupation; store the values in a Hash; display the Hash.
# Make sure the value of the :age key is an Integer

p "Enter a name, age, and occupation separated by spaces:"

details = gets.chomp.split(" ")
# p details
person = Hash.new
person.store(:name, details.at(0))
person.store(:age, details.at(1).to_i)
person.store(:occupation, details.at(2))
p person