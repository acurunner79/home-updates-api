class AddForeignKeyToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :location_id, :integer
  end
end
