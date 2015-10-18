class CreateProjectsUsers< ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.column 'project_id', :integer
      t.column 'user_id', :integer
    end
  end
end
