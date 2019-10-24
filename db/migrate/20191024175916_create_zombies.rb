class CreateZombies < ActiveRecord::Migration[5.0]
  def change
    create_table :zombies do |t|
      t.string :nome
      t.text :bio
      t.boolean :apodrecendo
      t.decimal :salario
      t.integer :idade
      t.datetime :nascimento
      t.date :zombification

      t.timestamps
    end
  end
end
