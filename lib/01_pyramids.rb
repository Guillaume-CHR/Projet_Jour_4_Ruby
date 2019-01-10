#***************************************************
#   THP Session 7 - Jour 4 - Application du Ruby
#   Ecrit par Lauren OLIVIER & Guillaume CHRISTE
#   
#   Nom : 01_pyramids.rb
#   Description:
# 		- Affichage de la pyramide de Mario après demande utilisateur du nombre d'étages
# 		- Affichage de la pyramide renversée après demande utilisateur du nombre d'étages
# 		- Affichage de la pyramide inversée (losange) après demande utilisateur du nombre d'étages
#***************************************************

#***************************************************
# Moitié de pyramide (non appellée)
# function 'half_pyramid'
# 	>> Affichage de la pyramide de Mario après demande utilisateur du nombre d'étages
#***************************************************
def half_pyramid
	#Demande utilisateur du nombre d'étage souhaité
	puts "Salut, bienvenue dans ma 'Moitié de Pyramide' ! Combien d'étages veux-tu ?"
	print "> "
	iStory = gets.chomp.to_i
	puts ""

	puts "Voici la moitié de pyramide :"
	#Pour chaque valeur entre 1 et le nombre d'étage entré
	for _iStory in (1..iStory) do
		#On affiche des espaces (nbr = le nombre d'étages final - le numéro d'étage en cours) 
		(iStory - _iStory).times do
			print " "
		end	
		#Une fois les espaces traités, on affiche des "#" (nbr = numéro de l'étage en cours)
		(_iStory).times do
			print "#"
		end
		#Retour à la ligne pour traiter l'étage d'après
		puts ""
	end
	puts ""
end
# Fin de la fonction 'half_pyramid'
#....................................................

#***************************************************
# Pyramide de Gizeh (non appellée)
# function 'full_pyramid'
# 	>> Affichage de la pyramide renversée après demande utilisateur du nombre d'étages
#***************************************************
def full_pyramid
	#Demande utilisateur du nombre d'étage souhaité
	puts "Salut, bienvenue dans ma Pyramide de Gizeh ! Combien d'étages veux-tu ?"
	print "> "
	etages= gets.chomp.to_i
	puts ""

	puts "Voici ma pyramide de #{etages} étages:"
	i=1 #Numéro de l'étage
	#Pour chaque étage
	etages.times do
		#On affiche des espaces (nbr = le nombre d'étages final - le numéro d'étage en cours(i)) 
		(etages - i).times do
			print " "
		end
		#Une fois les espaces traités, on affiche des "#" (nbr = 2*numéro de l'étage en cours -1)
		(2*i - 1).times do
			print "#"
		end
		#On incrémente i
		i+=1
		puts ""

	end
end
# Fin de la fonction 'full_pyramid'
#....................................................

#***************************************************
# Alexandrie, Alexandra
# function 'wtf_pyramid'
# 	>> Affichage de la pyramide inversée (losange) après demande utilisateur du nombre d'étages
#***************************************************
def wtf_pyramid
	#Demande utilisateur du nombre d'étage souhaité
	puts "Salut, bienvenue dans ma pyramide 'Alexandrie, Alexandra' ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print "> "
	etages= gets.chomp.to_i
	puts ""

	#Vérification: est-ce que le nombre d'étages est impair comme demandé
	if etages.even?	#Si le nombre est pair, on rappelle la pyramide
		puts "Hey coco, on t'a dit de tapper un nombre impair !!"
		puts "" 
		
		wtf_pyramid
		
	else #Si le nombre est impair, on génère la pyramide
		puts "Voici ma pyramide de #{etages} étages:"
		i=1	#Numéro de l'étage descendant (partie du haut + base)
		j=1 #Numéro de l'étage montant (partie du bas - base)

		#Pour chaque étage
		etages.times do |etage|
			#Si le numéro de l'étage est égale à la moitié supérieur du nbr d'étages (partie du haut + base)
			if etage <= ((etages/2).to_f).ceil 
				#On affiche des espaces (nbr = moitié du nombre d'étages (valeur sup) - étage en cours) 
				(((etages/2).to_f).ceil  - i + 1).times do
					print " "
				end
				#Une fois les espaces traités, on affiche des "#" (nbr = 2*numéro de l'étage en cours -1) 
				(2*i - 1).times do
					print "#"
				end
				#On incrémente i
				i+=1
				puts ""
			#Une fois passé à la moitié inférieure de la pyramide	
			else
				#On affiche des espaces (nbr = moitié du nombre d'étages traités dans la partie inf de la pyramide)
				j.times do
					print " "
				end
				#Une fois les espaces traités, on affiche des "#" (nbr = 2*numéro de l'étage en cours -5) 
				# NB: 5 = 2*2 + 1 qui correspond à la correction de l'incrémentation du i suite à la base (+1)
				# 								 et du manquement de décrémentation du i suite à l'inversion de pyramide (+1)
				# 								 comme c'est doublé on passe à 2*2 
				(2*i - 2*2 -1).times do
					print "#"
				end
				#On décrémente i
				i-=1
				#On incrémente j
				j+=1
				puts ""
			end
		end
	end
end
# Fin de la fonction 'wtf_pyramid'
#....................................................

# Lancement de la fonction 'wtf_pyramid'
wtf_pyramid
