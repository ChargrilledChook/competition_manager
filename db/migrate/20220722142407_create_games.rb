class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :first_player_id, null: false, foreign_key: true
      t.integer :second_player_id, null: false, foreign_key: true
      t.integer :first_player_score
      t.integer :second_player_score
      t.string :type
      t.boolean :complete, default: false, null: false

      t.timestamps
    end
  end
end
