class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :sprite_sheet_url
      t.jsonb :sprite_sheet_data
      t.integer :base_hp
      t.integer :base_speed
      t.integer :base_attack
      t.integer :base_sp_attack
      t.integer :base_defense
      t.string :base_sp_defense
      t.integer :primary_type_id
      t.integer :secondary_type_id

      t.timestamps
    end

    add_index(:species, :primary_type_id)
    add_index(:species, :secondary_type_id)
  end
end
