class CreateDevprosUsers < ActiveRecord::Migration
  def change
    create_table :devpros_users do |t|
      t.integer :devpro_id
      t.integer :user_id
    end
  end
end
