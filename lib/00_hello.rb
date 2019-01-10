#***************************************************
#   THP Session 7 - Jour 4 - Application du Ruby
#   Ecrit par Lauren OLIVIER & Guillaume CHRISTE
#   
#   Nom : 00_hello.rb
#   Description:
# 		- Une première interface (sur le terminal) demande le nom de l'utilisateur
# 		- Une fois enregistré, le terminal affiche "Coucou, " suivi du nom
#***************************************************

#***************************************************
# function 'ask_first_name'
# 	>> Demande du nom d'utilisateur via l'interface
#***************************************************
def ask_first_name
	puts "Coucou, quel est ton prénom?"
	print "> "
	first_name = gets.chomp
	puts ""
	return first_name
end
# Fin de la fonction 'ask_first name'
#....................................................


#***************************************************
# function 'say_hello'
# 	>> Affichage de la phrase "Coucou, " + first_name
#***************************************************
def say_hello(first_name)
	puts "Coucou, #{first_name}" 
	puts ""
end
# Fin de la fonction 'ask_first name'
#....................................................


#***************************************************
# Main Function 'perform'
# 	>> Appel des fonctions 'ask_first_name' & 'say_hello'
#***************************************************
def perform 
	first_name = ask_first_name			# Stokage du résultat de la fonction 'ask_first_name'
	say_hello(first_name)				# Appel de la fonction 'say_hello' avec le résultat de la fonction d'avant
end
# Fin de la fonction 'perform'
#....................................................

# Lancement de la fonction 'perform'
perform