class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|


      t.integer :category_id
      t.string :item_name
      t.string :item_description
      t.string :item_price
      t.integer :item_price



    end
  end
end
