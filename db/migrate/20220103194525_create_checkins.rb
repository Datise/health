class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :date, default: -> { 'CURRENT_TIMESTAMP' }
      t.integer :mood
      t.integer :sleep

      t.timestamps
    end
  end
end
