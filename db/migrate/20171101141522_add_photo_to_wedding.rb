class AddPhotoToWedding < ActiveRecord::Migration[5.1]
  def change
    add_column :weddings, :photo, :string
  end
end
