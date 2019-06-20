class CreatePokebags < ActiveRecord::Migration[5.2]
  def change
    create_table :pokebags do |t|

      t.timestamps
    end
  end
end
