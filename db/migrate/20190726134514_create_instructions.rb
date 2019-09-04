class CreateInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :instructions do |t|
      t.string :description
      t.string :image
      t.references :guidance, foreign_key: true

      t.timestamps
    end
  end
end
