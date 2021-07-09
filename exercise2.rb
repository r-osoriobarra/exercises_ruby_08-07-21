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
    include Habilidades::Volador, Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Herbivoro
end

class Perro < Mamifero
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Omnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

class Mosca < Insecto
    include Habilidades::Volador, Alimentacion::Omnivoro
end

class Mariposa < Insecto
    include Habilidades::Volador, Alimentacion::Herbivoro
end

class Abejo < Insecto
    include Habilidades::Volador, Alimentacion::Herbivoro
end