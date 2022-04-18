class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end