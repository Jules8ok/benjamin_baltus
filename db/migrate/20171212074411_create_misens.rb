class CreateMisens < ActiveRecord::Migration[5.1]
  def change
    create_table :misens do |t|
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
