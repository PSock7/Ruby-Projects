require "json"

class Famille
  attr_accessor :nom, :age, :titre, :email, :telephone

  def initialize(*args)
    @name = args[0]
    @age = args[1]
    @titre = args[2]
    @email = args[3]
    @telephone = args[4]
  end

  def sauvegarde
    memberInfo = {name: @name, age:@age, titre:@titre, email:@email, telephone:@telephone}.to_json
    open("livret.json","a") do |fichier|
      fichier.puts memberInfo
    end

  end

end
