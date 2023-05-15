class AddDateToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :date, :string
  end
end
