class CreateReportDays < ActiveRecord::Migration[7.0]
  def change
    create_table :report_days do |t|
    t.string :weekday
    t.string :date
    t.integer :cake_invest
    t.integer :bread_invest
    t.integer :investing
    t.integer :card
    t.integer :money
    t.integer :entries
    t.integer :expense
    t.string :description
    t.integer :profit

    t.timestamps
    end
  end
end
