#Pyramide de Gizeh



def full_pyramid

	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	etages= gets.chomp.to_i
	puts "Voici ma pyramide de #{etages} étages:"

	i=1
	etages.times do
		(etages - i).times do
			print " "
		end
		(2*i - 1).times do
			print "#"
		end
		i+=1
		puts ""

	end
end
full_pyramid


def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	etages= gets.chomp.to_i

	if etages.even?
		puts "Hey coco, on t'a dit de tapper un nombre impair !!"
		puts "" 
		wtf_pyramid
	else
		puts "Voici ma pyramide de #{etages} étages:"
		i=1
		j=1
		etages.times do |etage|
			if etage <= ((etages/2).to_f).ceil 
				(((etages/2).to_f).ceil  - i + 1).times do
					print " "
				end
				(2*i - 1).times do
					print "#"
				end
				i+=1
				puts ""
			else
				j.times do
					print " "
				end
				(2*i - 5).times do
					print "#"
				end
				i-=1
				j+=1
				puts ""
			end
		end
	end
end
wtf_pyramid
