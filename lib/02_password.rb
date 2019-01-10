#***************************************************
#   THP Session 7 - Jour 4 - Application du Ruby
#   Ecrit par Lauren OLIVIER & Guillaume CHRISTE
#   
#   Nom : 02_password.rb
#   Description:
# 		- Demande de l'enregistrement sur le site (entrer un mdp via la console)
# 		- Demande d'entrée du mdp via la console & check de la correspondance (envoie bouler si correspond pas & boucle)
# 		- Affichage du site de la NSA avec des informations top-secrètes
#***************************************************

#***************************************************
# Function 'signup'
# 	>> Demande de l'enregistrement sur le site (entrer un mdp via la console)
#***************************************************
def signup
	#Demande de création du mot de passe
	puts "Hey, définis ton mot de passe pour le site de la NSA"
	print "> "
	mdp = gets.chomp
	puts ""
	return mdp
end
# Fin de la fonction 'signup'
#....................................................

#***************************************************
# Function 'login'
# 	>> Demande d'entrée du mdp via la console & check de la correspondance en utilisant le mdp entré précédemment
#***************************************************
def login(mdp)
	#Demande du mot de passe de connexion
	puts "Rentre ton mot de passe"
	print "> "
	tentative = gets.chomp
	puts ""

	#Création d'un booléan pour la correspondance
	connect = (mdp == tentative) 
end
# Fin de la fonction 'login'
#....................................................

#***************************************************
# Function 'welcome_screen'
# 	>> Affichage du site de la NSA avec des informations top-secrètes
#***************************************************
def welcome_screen
	puts "Bienvenue sur le site d'informations top secrètes de la NSA"
	puts "    Secret 1 : Le tabac est bon pour la santé"
	puts "    Secret 2 : L'alcool est ton ami"
	puts ""
end
# Fin de la fonction 'welcome_screen'
#....................................................

#***************************************************
# Main Function 'perform'
# 	>> Appel des fonctions 'signup' & connect (utilisant le mdp entré dans 'signup')
# 	>> Si le mot de passe est correct, on affiche le site de la NSA ('welcome_screen') sinon on boucle sur 'login'
#***************************************************
def perform
	mdp = signup			# Stokage du résultat de la fonction 'signup'
	connect = login(mdp)	# Appel de la fonction 'login' avec le résultat de la fonction d'avant
	
	#Tant que le résultat de la fonction 'login' n'est pas True (signup = login), on redemande d'entrer le mot de passe
	while not connect 
		puts "Erreur - Ton mot de passe ne correspond pas à celui défini. Recommence."
		connect = login(mdp)
	end
	#Une fois sorti de la boucle (et donc le mot de passe est correct), on affiche la page de la NSA
	welcome_screen
end	
# Fin de la fonction 'perform'
#....................................................

# Lancement de la fonction 'perform'
perform
