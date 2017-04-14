class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|


      t.integer :category_id
      t.string :item_name
      t.string :item_description
      t.decimal :item_cost, :precision => 8, :scale => 2



    end
  end
end
