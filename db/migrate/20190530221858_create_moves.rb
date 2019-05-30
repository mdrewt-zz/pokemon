class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power
      t.integer :accuracy
      t.integer :type_id
      t.string :attack
      t.string :defense

      t.timestamps
    end
  end
end
