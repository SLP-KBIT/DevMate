class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :topic_id
      t.text :summary
      t.text :modification
      t.integer :user_id

      t.timestamps
    end
  end
end
