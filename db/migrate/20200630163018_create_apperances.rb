class CreateApperances < ActiveRecord::Migration[5.1]
  def change
    create_table :apperances do |t|
      t.string :Guest
      t.string :Episode
      t.integer :Numeric_rating

      t.timestamps
    end
  end
end
