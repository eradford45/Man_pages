options = ['mv', 'cp', 'mkdir', 'ls', 'rm', 'Enter your own command']
def menu(options)
  options.each.with_index { |opt, num| puts "#{num + 1}) #{opt}"}
  p 'Choose a Number'
	user_input = gets.to_i
  case user_input
		when 1
			p `man mv`
			menu(options)
		when 2
			p `man cp`
			menu(options)
		when 3
			p `man mkdir`
			menu(options)
		when 4
			p `man ls`
			menu(options)
		when 5
			p `man rm`
			menu(options)
		when 6
			p 'Enter what you want to search'
			user_input2 = gets.strip
			p `man #{user_input2}`
			menu(options)
		else
			p 'Invalid Input'
			menu(options)
		end
end

menu(options)