require 'date'
while true
puts "What is the amount due?"

amount_due = gets.chomp
if amount_due.to_f <= 0 || amount_due =~ /[a-zA-Z]/
  puts "Invalid input. Please try again."
  abort
end

puts "How much was given?"
given = gets.chomp
if given.to_f <= 0 || given =~ /[a-zA-Z]/
  puts "Invalid input. Please try again."
  abort
end

if amount_due <= given
  change = given.to_f - amount_due.to_f
  puts "Thank you! The change given will be $#{sprintf('%.2f', change)}"
  puts "Date: " + Time.new.strftime("%Y %B %d, %I:%M%p")
  abort
else
  change = amount_due.to_f - given.to_f
  puts "Customer still needs to pay $#{sprintf('%.2f', change)}!"
  
end
end