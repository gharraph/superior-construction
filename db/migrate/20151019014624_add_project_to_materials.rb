class AddProjectToMaterials < ActiveRecord::Migration
  def change
    add_reference :materials, :project, index: true, foreign_key: true
  end
end
