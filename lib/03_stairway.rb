


def random
	iNum = rand(1..6)
	return iNum
end

def stair
etages= 10

e= etages - 1
i="#"
position = 0

# création des 10 espaces vides du 11eme etage du jeu (qui est en fait le 1er construit)
	print "    "
	10.times do 
		print " "
	end	

# contrôle de la 11eme case du 11eme étage : 
# case avec bonhomme ou espace vide

	if position == 10 
		print "£"
	else 
		print " "
	end	
	puts ""


etages.times do |etage|
	print "     "
	if position == (10 - (etage + 1) ) 
		(e-1).times do 
			print " "
		end	
		print "£"
	else 
		e.times do 
			print " "
		end
	end	
	puts i
	i+="#"
	e-=1
end

end

stair
