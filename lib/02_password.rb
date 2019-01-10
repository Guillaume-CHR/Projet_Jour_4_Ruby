#Le programme va se décomposer en trois parties :

#une partie signup, demandant à l'utilisateur de définir un mot de passe
#une partie login, demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
#une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes de la NSA


def signup
	puts "Hey, définis ton mot de passe"
	print "> "
	mdp = gets.chomp
	puts ""
	return mdp
end

def login(mdp)
	puts "Rentre ton mot de passe"
	print "> "
	tentative = gets.chomp
	puts ""
	connect = (mdp == tentative)
end

def welcome_screen
	puts "Bienvenue sur le site d'informations top secrètes de la NSA"
	puts "    Secret 1 : Le tabac est bon pour la santé"
	puts "    Secret 2 : L'alcool est ton ami"
	puts ""
end

def perform
	mdp = signup
	connect = login(mdp)
	while not connect
		puts "Erreur - Ton mot de passe ne correspond pas à celui défini. Recommence."
		connect = login(mdp)
	end
	welcome_screen
end	

perform
