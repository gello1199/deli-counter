require "pry"

def line(array)
    katz_deli = []
    if array.length == 0
        puts "The line is currently empty."
    else
        array.each_with_index do |name, index|
        katz_deli.push(" #{index + 1}. #{name}")
        end
        puts "The line is currently:#{katz_deli.join}"
    end
end

def take_a_number(katz_deli, new_name)
    katz_deli << new_name
    puts "Welcome, #{new_name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli = katz_deli.shift
    end
end