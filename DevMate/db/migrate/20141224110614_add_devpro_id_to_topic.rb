class AddDevproIdToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :devpro_id, :integer
  end
end
