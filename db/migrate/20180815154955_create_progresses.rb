class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.integer :value
      t.belongs_to :goal, index: true
      t.date :done_on
      
      t.timestamps
    end
  end
end
