class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :material_id
      t.string :content

      t.timestamps
    end
  end
end
