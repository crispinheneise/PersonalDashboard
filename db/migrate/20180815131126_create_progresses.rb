class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.integer :value
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
