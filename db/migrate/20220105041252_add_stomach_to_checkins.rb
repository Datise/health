class AddStomachToCheckins < ActiveRecord::Migration[7.0]
  def change
    add_column :checkins, :stomach, :integer, default: 0
    add_column :checkins, :caffeine, :integer, default: 0
  end
end
