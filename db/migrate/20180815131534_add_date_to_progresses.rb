class AddDateToProgresses < ActiveRecord::Migration[5.2]
  def change
    add_column :progresses, :date, :datetime
  end
end
