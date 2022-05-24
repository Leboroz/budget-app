class AddColumnTotalAmountToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :total_amount, :money
  end
end
