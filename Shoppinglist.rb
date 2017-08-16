@fooditems = ["apple", "pear", "panda", "duck"]
@prices = ['$|1.2', '$|4.5', '$|5.6', '$|3]']
@shopping_list = []
@price_list = []
@continue = true
def uniq?
    @fooditems.length == @fooditems.uniq.length
    @shopping_list.length == @shopping_list.uniq.length
end
def menu
    puts '_____________'
    puts '| MAIN MENU |'
    puts '-------------'
    puts ' AMAZON... I SWEAR'
    puts '1) current shopping list'
    puts '2) avaible items'
    puts '3) add items'
    puts '4) remove items'
    puts '5) exit'
    @input1 = gets.chomp.to_i
end

def stop 
    puts 'Bye!'
    @continue = false   
end
def current_shopping_list
    puts '_______________________'
    puts '| Heres what you have |'
    puts '-----------------------'
   
 


    
    
    
    @shopping_list.each do |shopping|
    
  
    puts '------------------------'
    puts "#{shopping}"
    end
    puts '------------------------'
    
end


def avaible_items
    puts '_____________________________'
    puts '| Heres what you could have |'
    puts '-----------------------------'
    
 

 @fooditems.zip(@prices).each do |food, money|
   puts "#{food} #{money}"
   
    end
end    
def add_items
    puts '_____________'
    puts '| Buy stuff |'
    puts '-------------'
    @fooditems.zip(@prices).each_with_index do |food, num|
    puts '------------------------'
    
        puts "#{num + 1}) #{food}"
end
    puts '------------------------'
    puts 'Select the number of the item you want'
    user_input1 = gets.chomp.to_i
    numba = @fooditems[user_input1 - 1]
    puts "#{numba} added to your list"
    @shopping_list << @fooditems[user_input1 - 1]
    @price_list << @prices[user_input1 - 1]
    @fooditems.delete_at(user_input1 - 1)
    @prices.delete_at(user_input1 - 1)

   
end
def remove_items
    puts '________________'
    puts '    | CART |'
    puts '----------------'
    @shopping_list.zip(@prices).each_with_index do |food, num|
    puts '------------------------'
    
        puts "#{num + 1}) #{food}"
end
    puts '------------------------'
    p 'Enter the number of the item you want to remove'
    user_input2 = gets.strip.to_i
    number = @shopping_list[user_input2 - 1]
    puts "#{number} removed form your list"
    @fooditems << @shopping_list[user_input2 - 1]
    @prices << @price_list[user_input2 - 1]
    @shopping_list.delete_at(user_input2 - 1)
    @price_list.delete_at(user_input2 - 1)

end 
def bad
    puts 'please select 1-5'
    puts 'press enter to try again'
    gets
end       


while @continue == true
    menu
    if @input1 == 1
        current_shopping_list
    elsif @input1 == 2
        avaible_items
    elsif @input1 == 3
        add_items
    elsif @input1 == 4
        remove_items
    elsif @input1 == 5
        stop  
    else 
        bad
    end
    
end   




        