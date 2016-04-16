class CreateCorrections < ActiveRecord::Migration
  def change
    create_table :corrections do |t|
      t.string :post_id
      t.string :correcter_id
      t.string :orig_text
      t.string :new_text

      t.timestamps null: false
    end
  end
end
