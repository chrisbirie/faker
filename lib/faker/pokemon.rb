module Faker
  class Pokemon < Base
    class << self
      def name(region = '')
        case region
          when 'Kanto'
            fetch('pokemon.kanto_names')
          when 'Johto'
            fetch('pokemon.johto_names')
          when 'Hoenn'
            fetch('pokemon.hoenn_names')
          when 'Sinnoh'
            fetch('pokemon.sinnoh_names')
          when 'Unova'
            fetch('pokemon.unova_names')
          when 'Kalos'
            fetch('pokemon.kalos_names')
          when 'Alola'
            fetch('pokemon.alola_names')
          else
            array_of_names = []
            array_of_names << fetch('pokemon.kanto_names')
            array_of_names << fetch('pokemon.johto_names')
            array_of_names << fetch('pokemon.hoenn_names')
            array_of_names << fetch('pokemon.sinnoh_names')
            array_of_names << fetch('pokemon.unova_names')
            array_of_names << fetch('pokemon.kalos_names')
            array_of_names << fetch('pokemon.alola_names')
            array_of_names.sample
        end

      end

      def location
        fetch('pokemon.locations')
      end

      def item
        fetch('pokemon.items')
      end

      def move
        fetch('pokemon.moves')
      end

      def type
        fetch('pokemon.types')
      end
    end
  end
end