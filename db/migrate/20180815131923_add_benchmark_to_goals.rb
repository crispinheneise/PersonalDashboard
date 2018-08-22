class AddBenchmarkToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :benchmark, :integer, null: false, default: 0
  end
end
