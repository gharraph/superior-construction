class AddAmountToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :amount, :string
  end
end
