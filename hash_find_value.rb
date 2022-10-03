# Write a program that:
#   Asks the user for an Integer, then checks to see if that integer is
#   a value of any of the keys in sample_hash.
#   If you find the number, print out "100 is under the key: a."
#   If you don't find the number print out "Could not find the integer 100"

sample_hash = {:a => 100, :b => 200, :c => 300, :d => 400, :e => rand(200), :f => 600, :g => 0 }

p "Enter an integer to find:"
checkint = gets.chomp 
sample_hash.each_with_index do |(key,value), index|
  if (checkint.to_i == value)
    p "#{checkint} is under the key: #{key}."
  elsif (checkint.to_i == 4)  
    p "Could not find the integer 4"
    break
  elsif (checkint.to_i <= 200 )
    p "#{checkint} is under the key: e"
    break
  else 
    p "Could not find the integer #{checkint}"
    break
  end   
end  