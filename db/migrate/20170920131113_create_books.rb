class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :image
      t.string :attachment

      t.timestamps
    end
  end
end
