class ChangeAmountInMaterials < ActiveRecord::Migration
  def change
    change_column :materials, :amount, :decimal
  end
end
