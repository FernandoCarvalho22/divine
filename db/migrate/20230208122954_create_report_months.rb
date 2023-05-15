class CreateReportMonths < ActiveRecord::Migration[7.0]
  def change
    create_table :report_months do |t|
      t.float :investing
      t.float :entries
      t.float :expense
      t.string :description
      t.float :profit_month

      t.timestamps
    end
  end
end
