class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.integer :zombie_id
      t.text :status

      t.timestamps
    end
  end
end
