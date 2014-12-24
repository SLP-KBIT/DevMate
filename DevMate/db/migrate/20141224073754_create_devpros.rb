class CreateDevpros < ActiveRecord::Migration
  def change
    create_table :devpros do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
