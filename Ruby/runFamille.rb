require_relative "../Ruby/famille"

puts "Desirez vous ajouter un nouveau membre dans votre carnet de famille ? (Y/N)"

answer = gets.chomp.upcase

while answer == "Y"
  puts "Veuiller indiquer le nom du nouveau membre"
  nom = gets.chomp.capitalize
  puts "Veuiller indiquer l'age du nouveau membre"
  age = gets.chomp.to_i
  puts "Veuiller indiquer le titre du nouveau membre"
  titre = gets.chomp
  puts "Veuiller indiquer l'email du nouveau membre"
  email = gets.chomp
  puts "Veuiller indiquer le numero de telephone du nouveau membre"
  telephone = gets.chomp.to_i
  newMember = Famille.new(nom,age,titre,email, telephone)
  newMember.sauvegarde
  if answer != "Y"
    break
  end

  puts "Desirez vous ajouter un autre membre dans votre repertoire ? (Y/N)"
  again = gets.chomp.upcase

  if again != "Y"
    break
  end
end
