class CreateLegos < ActiveRecord::Migration[6.0]
  def change
    create_table :legos do |t|
      t.string :name
      t.string :color
      t.string :theme
      t.string :gender
      t.boolean :trump

      t.timestamps
    end
  end
end
