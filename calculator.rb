#make sure all requires are at the top
require 'pry'

def menu
  begin
    p "welcome to calculations"
    p "enter your equation"
    p "put spaces inbetween everything"
    equation = gets.strip.split(" ")
    first_num = equation[0]
    second_num = equation[2]
    operator = equation[1]

    first_num = Float(first_num) 
    rescue
    p 'first number Invalid'
    menu
    second_num = Float(second_num)
    rescue 
    p 'second number invalid'
    menu
    end

    
    
    # This was a Check to make sure first_num and second_ num
    # were actually numbers... didnt work.. 
      # if /(d+)|/(\d+).(\d+)/.match(first_num)
      #   calculations(first_num, second_num, operator)
      # else 
      #   p 'first number was invalid'
      #   menu
      # end
      # if /(d+)|/(\d+).(\d+)/.match(second_num)
      #   calculations(first_num, second_num, operator)
      # else
      #   p 'second number was invalid'
      #   menu(first_num)
      # end
      calculations(first_num, second_num, operator)
    
       

    
end 

def calculations(first_num, second_num, operator)
    first_num = first_num.to_i
    second_num = second_num.to_i
  
  case operator
        when operator = "+"
            first_num = (first_num + second_num)
            puts "the anwser is #{first_num}"
            menu2(first_num)
        when operator = "-"
            first_num = (first_num - second_num)
            puts "the anwser is #{first_num}"
            menu2(first_num)
        when operator = "/"
            first_num = (first_num / second_num)
            puts "the anwser is #{first_num}"
            menu2(first_num)
        when operator = "*"
            first_num = (first_num * second_num)
            puts "the anwser is #{first_num}"
            menu2(first_num)
        else
            p "#{operator} is not supported please enter +, -, /, *"
            operator = gets.strip
            calculations(first_num, second_num, operator)
    end

end

def menu2(first_num)
    p 'Choose one of the following options'
    p '1) continue with current number'
    p '2) clear' 
    p '3) exit'
    user_input = gets.strip.to_i
    if user_input == 1
        menu3(first_num)
    elsif user_input == 2
        menu
    elsif user_input == 3
        exit
    else
        p 'please choose 1, 2 or 3'
        menu2           
    end 
end   

def menu3(first_num)
    p 'enter operator +, -, /, *'
    operator = gets.strip
    p 'enter second number'
    second_num = gets.strip.to_i
    p 'Is this correct?'
    p "#{first_num} #{operator} #{second_num}"
    p 'y/n?'
    yn = gets.strip
    if yn == "y"
      calculations(first_num, second_num, operator)
    else
      menu2(first_num)
    end
end







  menu


