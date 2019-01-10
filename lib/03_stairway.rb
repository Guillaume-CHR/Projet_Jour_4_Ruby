def random
	iNum = rand(1..6)
	return iNum
end

def stair(position)
	etages= 10

	e= etages - 1
	i="#"

	# création des 11 espaces vides du 11eme etage du jeu (qui est en fait le 1er construit)
		print "    "
		11.times do 
			print " "
		end	

	# contrôle de la 12eme case du 11eme étage : 
	# case avec bonhomme ou espace vide

		if position == 10 
			print "£"
		else 
			print " "
		end	
		puts ""

	#Traitement des étages de la pyramide

	etages.times do |etage|
		print "     "
		e.times do 
			print " "
		end	
		if position == (10 - (etage + 1) ) 
			print "£"
		else 
			print " "
		end	
		puts i
		i+="#"
		e-=1
	end

end

def progress(iNum, position)
	if iNum == 5 || iNum == 6
		step = 1
	elsif (iNum == 2 || iNum == 3 || iNum == 4) || (iNum == 1 && position == 0)
		step = 0
	else
		step = -1
	end
	return step
end

def stat
	table=[]
	100.times do
		position = 0
		i = 0
		while position < 10
			iNum = random
			step = progress(iNum, position)
			position += step
			i+=1
		end
		table << i
	end
	average = table.sum / table.size.to_f
end

def perform
	puts "Bienvenue au jeu de l'oie informatique"
	puts "Ce jeu passionnant va te montrer un bonhomme monter un escalier"
	puts "Et c'est parti ... tu pars de 0"
	puts ""

	position = 0
	stair(position)

	while position < 10
		iNum = random
		puts "Tu as tiré le numéro #{iNum}"

		step = progress(iNum, position)
		if step == 1
			puts "Félicitation - Tu avances d'une marche"
		elsif step == 0
			puts "Feignasse - Tu ne bouges pas"
		else
			puts "Perdu - Tu recules d'une marche"
		end

		position += step

		puts "Ta nouvelle position est #{position} !!"
		stair(position)
	end

	puts "TU ES UN OUF - Tu es en haut de l'escalier"

	average = stat
	puts "INFO NAZE : Le nombre moyen de tours par partie est de #{average} !"

	puts ""
	puts "<3<3<3<3<3<3<3<3<3<3<3<3<3<3<3"
	puts "<3 from Lauren & Guillaume  <3"
	puts "<3<3<3<3<3<3<3<3<3<3<3<3<3<3<3"
	puts ""
end

perform

