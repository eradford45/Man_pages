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
            first_num = (first_num + second_num)
            puts first_num
            menu2
        when operator = "-"
            first_num = (first_num - second_num)
            p first_num
            menu2
        when operator = "/"
            first_num = (first_num / second_num)
            p first_num
            menu2
        when operator = "*"
            first_num = (first_num * second_num)
            p first_num
            menu2
        else
            p "#{operator} is not supported please enter +, -, /, *"
            operator = gets.strip
    end
end

def menu2
    p 'Choose one of the following options'
    p '1) continue with current number'
    p '2) choose new number'
    p '3) exit'
    user_input = gets.strip.to_i
    if user_input == 1
        menu3
    elsif user_input == 2
        menu
    elsif user_input == 3
        exit
    else
        p 'please choose 1, 2 or 3'
        menu2           
    end 
end   


menu

