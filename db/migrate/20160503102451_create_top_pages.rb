class CreateTopPages < ActiveRecord::Migration
  def change
    create_table :top_pages do |t|
      t.string :title
      t.string :emotion
      t.binary :img
      t.text :description
      t.text :main_text
      t.timestamps null: false
    end
  end
end
