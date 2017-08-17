require './Magi_8_BallBossMode.rb'
require 'pry'

anwser = [
	'● It is certain',
	'● It is decidedly so',
	'● Without a doubt',
	'● Yes definitely',
	'● You may rely on it',
	'● As I see it, yes',
	'● Most likely',
	'● Outlook good',
	'● Yes',
	'● Signs point to yes',
	'● Reply hazy try again',
	'● Ask again later',
	'● Better not tell you now',
	'● Cannot predict now',
	'● Concentrate and ask again',
	"● Don't count on it",
	'● My reply is no',
	'● My sources say no',
	'● Outlook not so good',
	'● Very doubtful',
]
default_anwsers = [
	'● It is certain',
	'● It is decidedly so',
	'● Without a doubt',
	'● Yes definitely',
	'● You may rely on it',
	'● As I see it, yes',
	'● Most likely',
	'● Outlook good',
	'● Yes',
	'● Signs point to yes',
	'● Reply hazy try again',
	'● Ask again later',
	'● Better not tell you now',
	'● Cannot predict now',
	'● Concentrate and ask again',
	"● Don't count on it",
	'● My reply is no',
	'● My sources say no',
	'● Outlook not so good',
	'● Very doubtful',
]

def uniq?(new_response, anwser)
	anwser << "● #{new_response}"
	anwser.length == anwser.uniq.length
end

def checks_add(new_response, anwser)
	if uniq?(new_response, anwser) == true
    puts "Response #{new_response} successfully added"
  elsif uniq?(new_response, anwser) == false
		puts "Response
		#{new_response} already exists"
		anwser.delete_at(-1)
  end    		
end


def menu(anwser, default_anwsers)
	p 'Enter Question'
	question = gets.strip
	cheats(question, anwser, default_anwsers)
end

	
def final_anwser(anwser, default_anwsers, question)
	anwser1 = anwser.sample
	p "#{question}"
	p "#{anwser1}"
	menu(anwser, default_anwsers)
end


def cheats(question, anwser, default_anwsers)
	if question.downcase.to_s == 'add_anwsers'
		p 'Enter new response'
		new_response = gets.strip
		checks_add(new_response, anwser)
		menu(anwser, default_anwsers)
	elsif question.downcase.to_s == 'remove_anwsers'
		anwser.each.with_index do |responses, num|
		num = num + 1
		puts "#{num}) #{responses}" end
		p 'Select number of option you wish to remove'
		remove_response = gets.strip.to_i
		remove_response = remove_response - 1
		p "Removing #{anwser.delete_at(remove_response)}"
		anwser.delete_at(remove_response)
		menu(anwser, default_anwsers)
	elsif question.downcase.to_s == 'reset_anwsers'
		p 'Resetting to Default'
		anwser = default_anwsers
		menu(anwser, default_anwsers)
	elsif question.downcase.to_s == 'print_anwsers'
		anwser.each.with_index do |responses, num|
		num = num + 1
		puts "#{num}) #{responses}" end
		menu(anwser, default_anwsers)
	else
		final_anwser(anwser, default_anwsers, question)
	end
end


def bossmode(anwser, default_anwsers, cheat_codes)    
	if cheat_codes.empty? == false
		first = cheat_codes.shift
		first.strip
		p "#{first}"
	else
		menu(anwser, default_anwsers)
	end
	if first == 'boss_mode'
	
		bossmode_menu(anwser, default_anwsers)
	else
		menu(anwser, default_anwsers)
	
	end
end


def bossmode_menu(anwser, default_anwsers)
	p '1) Add Anwsers'
	p '2) Remove Anwsers'
	p '3) Reset Anwsers'
	p '4) Print Anwsers'
	p '5) Leave Boss Mode'
	boss_input = gets.strip.to_i
	if boss_input == 1
			p 'Enter new response'
		new_response = gets.strip
		checks_add(new_response, anwser)
		bossmode_menu(anwser, default_anwsers)
	elsif boss_input == 2
		anwser.each.with_index do |responses, num|
		num = num + 1
		puts "#{num}) #{responses}" end
		p 'Select number of option you wish to remove'
		remove_response = gets.strip.to_i
		remove_response = remove_response - 1
		p "Removing #{anwser.delete_at(remove_response)}"
		anwser.delete_at(remove_response)
		menu(anwser, default_anwsers)
	elsif boss_input == 3
		p 'Resetting to Default'
		anwser = default_anwsers
		bossmode_menu(anwser, default_anwsers)
	elsif boss_input == 4
		anwser.each.with_index do |responses, num|
		num = num + 1
		puts "#{num}) #{responses}" end
		bossmode_menu(anwser, default_anwsers)
	elsif boss_input == 5
		menu(anwser, default_anwsers)
	else 
		p 'Please Enter a number 1-5'
		bossmode_menu(anwser, default_anwsers)
	end
end


    

cheat_codes = ARGV
bossmode(anwser, default_anwsers, cheat_codes)

