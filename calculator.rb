#make sure all requires are at the top
require 'pry'

def menu
    p 'welcome to the ruby calculator'
    p 'please enter the first number'
    first_num = gets.strip.to_i
    p 'please enter the second number'
    second_num = gets.strip.to_i
    p 'please enter + - / *'
    operator = gets.strip
    calculations(first_num, second_num, operator)
end 

def calculations(first_num, second_num, operator)
    case operator
        when operator = "+"
            third_num = (first_num + second_num)
            puts third_num
        when operator = "-"
            third_num = (first_num - second_num)
            p third_num
        when operator = "/"
            third_num = (first_num / second_num)
            p third_num
        when operator = "*"
            third_num = (first_num * second_num)
            p third_num
        else
            p "#{operator} is not supported please enter +, -, /, *"
    end
end

menu

