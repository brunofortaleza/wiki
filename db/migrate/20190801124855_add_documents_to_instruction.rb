class AddDocumentsToInstruction < ActiveRecord::Migration[5.1]
  def change
    add_column :instructions, :documents, :json
  end
end
