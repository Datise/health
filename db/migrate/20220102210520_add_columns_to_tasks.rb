class AddColumnsToTasks < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
      t.belongs_to :goal
      t.belongs_to :user
    end
  end
end
