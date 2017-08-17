def bossmode(anwser, default_anwsers, cheat_codes)    
 
	if cheat_codes.to_s == 'boss_mode'
		bossmode_menu(anwser, default_anwsers)
	else
		menu(anwser, default_anwsers)
	end
end
cheat_codes = ARGV