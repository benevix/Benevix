class CreateBrains < ActiveRecord::Migration[5.0]
  def change
    create_table :brains do |t|
      t.integer :zombie_id
      t.string :sabor

      t.timestamps
    end
  end
end
