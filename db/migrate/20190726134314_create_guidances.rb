class CreateGuidances < ActiveRecord::Migration[5.1]
  def change
    create_table :guidances do |t|
      t.string :title
      t.references :system, foreign_key: true

      t.timestamps
    end
  end
end
