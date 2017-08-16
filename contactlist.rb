@contacts = []
def menu 
    puts "contact list"
    puts "1) Display all contacts"
    puts "2) Create a contact"
    puts "3) Exit"
    choice = gets.to_i
end
    case choice
    when 1
    all_contacts
    when 2
    create_contact
    when 3
    exit
    end


def all_contacts
    puts @contacts
end

def create_contact
    puts "Enter contact name"
    name = gets.strip
    @contact << name
    puts @contacts
end

while menu == true
    end