continue = true
ui = []
while continue == true 
  def = menu
    puts "Contact Info"
    puts "Press 1 for new contact"
    puts "Press 2 for Contact List"
    puts "press 3 to exit"
    input = gets.chomp.to_i
   
menu
    if input == 1
        puts "Enter new Contact"
    
        ui << gets.chomp
        
    elsif input == 2
            puts "Here are your current contacts"
            ui.each_with_index 
        do |ui, uiu|
            puts "---------------------------------"
            puts (1 + uiu), ui
            puts "---------------------------------"    
        end
         puts "enter 1 for main menu"
            puts "enter 2 edit a contact"
            input2 = gets.chomp.to_i
            if input 2
        
       
        
    elsif input == 3 
        puts"bye!"
        continue = false
    else 
        puts "press 1 2 or 3" 
        puts "Press enter to try again"  
        input = gets.chomp
    
    end
end   
    



