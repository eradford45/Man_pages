#make sure all requires are at the top
require 'pry'

def menu
  p "welcome to calculations"
  p "enter your equation"
  p "put spaces in between everything"
  equation = gets.strip.split(" ")
  first_num = equation[0]
  second_num = equation[2]
  operator = equation[1]
  calculations(first_num, second_num, operator)
end 


def numbercheck(first_num, second_num, operator)
  begin
    first_num = Float(first_num) 
  rescue
    p 'first number Invalid'
    menu
  end
  begin
    second_num = Float(second_num)
  rescue 
    p 'second number invalid'
    menu
  end
end
    

def calculations(first_num, second_num, operator)
  numbercheck(first_num, second_num, operator)  
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
      p " #{operator} is not supported please enter +, -, /, *"
      operator = gets.strip
      bad_operator(operator)
  end
end


def bad_operator(operator)
  
    p 'Is this correct?'
    p "#{first_num} #{operator} #{second_num}"
    p 'Y/N?'
    user_input = gets.strip.downcase
  if user_input == y
    calculations(first_num, second_num, operator)
  if user_input == n
    menu
  else
    p 'Invalid response'
    bad_operator
  end
end


def menu2(first_num)
  p 'Choose one of the following options'
  p '1) continue with current number'
  p '2) clear' 
  p '3) exit'
  p '4) store number'
  
    user_input = gets.strip.to_i
    if user_input == 1
      menu3(first_num)
    elsif user_input == 2
      menu
    elsif user_input == 3
      @store_num = nil
      first_num = nil  
      exit
    elsif user_input == 4 
      @store_num = first_num  
      menu
    else
      p 'please choose 1, 2 or 3'
      menu2           
    end 
end 
  
  
def menu3(first_num)
    p 'enter operator +, -, /, *'
    operator = gets.strip
    p 'enter second number enter "s" to use stored number'
    second_num = gets.strip.downcase
    if second_num == "s"
      second_num = @store_num
      p 'Is this correct?'
      p "#{first_num} #{operator} #{second_num}"
      p 'y/n?'
      yn = gets.strip
    else
      p 'Is this correct?'
      p "#{first_num} #{operator} #{second_num}"
      p 'y/n?'
      yn = gets.strip.downcase
    end
    if yn == "y"
      calculations(first_num, second_num, operator)
    else
      menu2(first_num)
    end
end
#This next one is important DO NOT DELETE AGAIN
menu


