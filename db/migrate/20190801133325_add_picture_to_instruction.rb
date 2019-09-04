class AddPictureToInstruction < ActiveRecord::Migration[5.1]
  def change
    add_column :instructions, :picture, :string
  end
end
