class AddUserToGoal < ActiveRecord::Migration[7.0]
  def change
    change_table :goals do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
