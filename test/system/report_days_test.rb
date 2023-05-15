require "application_system_test_case"

class ReportDaysTest < ApplicationSystemTestCase
  setup do
    @report_day = report_days(:one)
  end

  test "visiting the index" do
    visit report_days_url
    assert_selector "h1", text: "Report days"
  end

  test "should create report day" do
    visit report_days_url
    click_on "New report day"

    fill_in "Bread invest", with: @report_day.bread_invest
    fill_in "Cake invest", with: @report_day.cake_invest
    fill_in "Card", with: @report_day.card
    fill_in "Date", with: @report_day.date
    fill_in "Description", with: @report_day.description
    fill_in "Entries", with: @report_day.entries
    fill_in "Expense", with: @report_day.expense
    fill_in "Investing", with: @report_day.investing
    fill_in "Money", with: @report_day.money
    fill_in "Profit", with: @report_day.profit
    fill_in "Weekday", with: @report_day.weekday
    click_on "Create Report day"

    assert_text "Report day was successfully created"
    click_on "Back"
  end

  test "should update Report day" do
    visit report_day_url(@report_day)
    click_on "Edit this report day", match: :first

    fill_in "Bread invest", with: @report_day.bread_invest
    fill_in "Cake invest", with: @report_day.cake_invest
    fill_in "Card", with: @report_day.card
    fill_in "Date", with: @report_day.date
    fill_in "Description", with: @report_day.description
    fill_in "Entries", with: @report_day.entries
    fill_in "Expense", with: @report_day.expense
    fill_in "Investing", with: @report_day.investing
    fill_in "Money", with: @report_day.money
    fill_in "Profit", with: @report_day.profit
    fill_in "Weekday", with: @report_day.weekday
    click_on "Update Report day"

    assert_text "Report day was successfully updated"
    click_on "Back"
  end

  test "should destroy Report day" do
    visit report_day_url(@report_day)
    click_on "Destroy this report day", match: :first

    assert_text "Report day was successfully destroyed"
  end
end
