#Desafío - Herencia, polimorfismo y módulos
#Exercise 2
require_relative 'animal_modules.rb'

class Animal
    attr_reader :name
    def introduce(name)
        @name = name
    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

class Pinguino < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Omnivoro
end

class Pato < Ave
end

class Perro < Mamifero
end

class Gato < Mamifero
end

class Vaca < Mamifero
end

class Mosca < Insecto
end

class Mariposa < Insecto
end

class Abejo < Insecto
end