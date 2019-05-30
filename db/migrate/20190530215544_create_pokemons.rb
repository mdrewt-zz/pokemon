class CreatePokemon < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon do |t|
      t.string :nickname
      t.integer :level
      t.integer :exp
      t.integer :curent_damage
      t.integer :iv_hp
      t.integer :iv_speed
      t.integer :iv_attack
      t.integer :iv_sp_attack
      t.integer :iv_defense
      t.integer :iv_sp_defense
      t.integer :user_id
      t.integer :species_id
      t.integer :move_1_id
      t.integer :move_2_id
      t.integer :move_3_id
      t.integer :move_4_id

      t.timestamps
    end

    add_index(:pokemon, :user_id)
    add_index(:pokemon, :species_id)
  end
end
