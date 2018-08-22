class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.references :goal, foreign_key: true
      t.integer :value, null: false, default: 0
      t.date :date, null: false
    end
  end
end
