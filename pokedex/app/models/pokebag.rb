class Pokebag < ApplicationRecord
    belongs_to :user
    has_many :pokemons
end
