class AddValueToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :value, :integer, null: false, default: 0
  end
end
