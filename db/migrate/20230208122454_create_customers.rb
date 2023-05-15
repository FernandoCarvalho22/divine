class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :addres
      t.string :description

      t.timestamps
    end
  end
end
