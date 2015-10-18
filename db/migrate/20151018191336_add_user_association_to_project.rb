class AddUserAssociationToProject < ActiveRecord::Migration
  def self.up
    add_column :users, :project_id, :integer
    add_index 'users', ['project_id'], :name => 'index_project_id'
  end

  def self.down
    remove_column :users, :project_id
  end
end
