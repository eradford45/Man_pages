def menu
    puts "------menu----------"
    puts "1) Create New Contact"
    puts "2) Contact List"
    puts "3) Exit"
    @input = gets.chomp.to_i
end

def create
    puts "Enter New Contact Name"
    @user_input = gets.chomp
    @contactlist << @user_input
end
    
def list
        puts "Here are your Current Contacts"
    @contactlist.each_with_index do |names, num|
        puts "---------------------------------"
        puts "#{num + 1})" "#{names}"
    end
        puts "---------------------------------"   
end   

def bad
    puts "Choose 1, 2 or 3" 
    puts "Press enter to try again"  
    gets
end  


def uniq?
    @contactlist.length == @contactlist.uniq.length
end

def duplicate
    if uniq? == true
        puts "Contact #{@user_input} successfully added"

    elsif uniq? == false
        puts "Contact #{@user_input} already exists"
        @contactlist.delete_at(-1)
    end    
end

def stop
    puts "Thankyou"
    @continue = false
end 
def remove_change
    puts "---------------menu--------------"
    puts "1) Main Menu"
    puts "2) Delete Contact"
    puts "3) Edit Contact"
    @user_deput = gets.chomp.to_i

    if @user_deput == 1
        menu

    elsif @user_deput == 2
        puts "Select the number of the contact to delete"
        @dname = gets.chomp.to_i
        @contactlist.delete_at(@dname - 1)
    elsif @user_deput == 3
        puts "select the number of the contact to edit" 
        @ename = gets.chomp.to_i
        @contactlist.delete_at(@ename - 1)
        puts "Type name of contact"
     edit_name = gets.chomp
     @contactlist.insert(@ename - 1, edit_name)
     list
    else 
        puts "invalid response"
    end    

        
end

@continue = true
@contactlist = []
while @continue == true

    menu
    if @input == 1
        create
        duplicate   
    elsif @input == 2
        list
        remove_change
    elsif @input == 3
        stop          
    else
        bad
    end
end 
   

