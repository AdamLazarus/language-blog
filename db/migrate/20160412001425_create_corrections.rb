class CreateCorrections < ActiveRecord::Migration
  def change
    create_table :corrections do |t|
      t.integer :post_id
      t.integer :correcter_id
      t.string :orig_text
      t.string :new_text

      t.timestamps null: false
    end
  end
end
