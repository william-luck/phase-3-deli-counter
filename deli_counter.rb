# Write your code here.

require 'pry'

example_array = ["billy", "jason", "emily"]

def line(array)

    if array.length == 0
        puts 'The line is currently empty.'
    else
        starting_string = 'The line is currently:'
        array.each_with_index do |element, index|
            starting_string << " #{index + 1}. #{element}"
        end
        puts starting_string
    end
end

def take_a_number(array, new_name)
    array << new_name
    puts "Welcome, #{new_name}. You are number #{array.length} in line."
end

def now_serving(array)
    if array.length == 0
        puts 'There is nobody waiting to be served!'
    else
        puts "Currently serving #{array[0]}."
        array.delete_at(0)
    end
end

binding.pry
0