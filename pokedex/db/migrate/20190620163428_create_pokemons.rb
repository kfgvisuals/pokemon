class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :level
      t.string :image

      t.timestamps
    end
  end
end
