#make sure all requires are at the top
require 'pry'
@stored = true
def menu
  p "welcome to calculations"
  p "enter your equation"
  p "put spaces in between everything"
  p "use 's' to use stored number"
  equation = gets.strip.split(" ")
  first_num = equation[0]
  second_num = equation[2]
  operator = equation[1]
  if first_num == "s"
    storedcheck
    if @stored == false
      p 'no stored number'
      menu
    elsif
      first_num = @store_num
      calculations(first_num, second_num, operator)
    end
  else
    calculations(first_num, second_num, operator)
  end
  if second_num == "s"
    storedcheck
    if @stored == false
      p 'no stored number'
      menu
    elsif
    second_num = @store_num
    calculations(first_num, second_num, operator)
    end
  else
    calculations(first_num, second_num, operator)
  end  
end 


def numbercheck(first_num, second_num)
  first_num.to_s
  second_num.to_s
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


def storedcheck
  begin
    @store_num = Float(@store_num)
  rescue
    @store = false
  end
end
    

def calculations(first_num, second_num, operator)
  numbercheck(first_num, second_num,)
  first_num = first_num.to_i
  second_num = second_num.to_i
  case operator
    when operator = "+"
      final_number = (first_num + second_num)
      puts "#{first_num} #{operator} #{second_num} = #{final_number}"
      first_num = final_number
      menu2(first_num, second_num, operator)
    when operator = "-"
      final_number = (first_num - second_num)
      puts "#{first_num} #{operator} #{second_num} = #{final_number}"
      first_num = final_number
      menu2(first_num, second_num, operator)
    when operator = "/"
      final_number = (first_num / second_num)
      puts "#{first_num} #{operator} #{second_num} = #{final_number}"
      first_num = final_number
      menu2(first_num, second_num, operator)
    when operator = "*"
      final_number = (first_num * second_num)
      puts "#{first_num} #{operator} #{second_num} = #{final_number}"
      first_num = final_number
      menu2(first_num, second_num, operator)
    else
      bad_operator(first_num, second_num, operator)
  end
end


def bad_operator(first_num, second_num, operator)
  p " #{operator} is not supported please enter +, -, /, *"
  operator = gets.strip
  p 'Is this correct?'
  p "#{first_num} #{operator} #{second_num}"
  p 'Y/N?'
  user_input4 = gets.strip.downcase
  if user_input4 == "y"
    calculations(first_num, second_num, operator)
  elsif user_input4 == "n"
    menu
  else
    p 'Invalid response'
    bad_operator
  end
end


def menu2(first_num, second_num, operator)
  p 'Choose one of the following options'
  p '1) continue with current number'
  p '2) exit' 
  p '3) clear'
  p '4) store number'
  
    user_input = gets.strip.to_i
    if user_input == 1
      menu3(first_num, second_num, operator)
    elsif user_input == 2
      exit
    elsif user_input == 3
        storedcheck
        if @stored == false
          p "#{first_num} #{second_num} #{operator} cleared"
          
        else
          p "#{@store_num} cleared"
        end
      @store_num = nil
      first_num = nil
      second_num = nil
      operator = nil  
      menu
    elsif user_input == 4 
      @store_num = first_num
      p " Number #{@store_num} Stored"  
      menu
    else
      p 'please choose 1, 2, 3 or 4'
      menu2(first_num, second_num, operator)           
    end 
end 
  
  
def menu3(first_num, second_num, operator)
  p 'enter an operator followed by a number'
  p 'example: * 5'
  p "use 's' to use the stored number"
  equation = gets.strip.split(" ")
  second_num = equation[1]
  operator = equation[0]
    if second_num == "s"
      storedcheck
      if @stored == false
        p 'No Stored Number'
        menu3(first_num, second_num, operator)
      else
        second_num = @store_num
        p 'Is this correct?'
        p "#{first_num} #{operator} #{second_num}"
        p 'y/n?'
        yn = gets.strip
      end
    else
      p 'Is this correct?'
      p "#{first_num} #{operator} #{second_num}"
      p 'y/n?'
      yn = gets.strip.downcase
    end
    if yn == "y"
      calculations(first_num, second_num, operator)
    else
      menu2(first_num, second_num, operator)
    end
end
#This next one is important DO NOT DELETE AGAIN
menu


