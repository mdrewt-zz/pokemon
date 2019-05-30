class CreateTypeEffects < ActiveRecord::Migration[5.2]
  def change
    create_table :type_effects do |t|
      t.float :multiplier
      t.integer :move_type_id
      t.integer :target_type_id

      t.timestamps
    end

    add_index(:type_effects, :move_type_id)
    add_index(:type_effects, :target_type_id)
  end
end
