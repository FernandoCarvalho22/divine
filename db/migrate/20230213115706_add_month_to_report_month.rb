class AddMonthToReportMonth < ActiveRecord::Migration[7.0]
  def change
    add_column :report_months, :month, :string
  end
end
