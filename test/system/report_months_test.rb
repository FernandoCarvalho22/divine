require "application_system_test_case"

class ReportMonthsTest < ApplicationSystemTestCase
  setup do
    @report_month = report_months(:one)
  end

  test "visiting the index" do
    visit report_months_url
    assert_selector "h1", text: "Report months"
  end

  test "should create report month" do
    visit report_months_url
    click_on "New report month"

    fill_in "Description", with: @report_month.description
    fill_in "Entries", with: @report_month.entries
    fill_in "Expense", with: @report_month.expense
    fill_in "Investing", with: @report_month.investing
    fill_in "Profit month", with: @report_month.profit_month
    click_on "Create Report month"

    assert_text "Report month was successfully created"
    click_on "Back"
  end

  test "should update Report month" do
    visit report_month_url(@report_month)
    click_on "Edit this report month", match: :first

    fill_in "Description", with: @report_month.description
    fill_in "Entries", with: @report_month.entries
    fill_in "Expense", with: @report_month.expense
    fill_in "Investing", with: @report_month.investing
    fill_in "Profit month", with: @report_month.profit_month
    click_on "Update Report month"

    assert_text "Report month was successfully updated"
    click_on "Back"
  end

  test "should destroy Report month" do
    visit report_month_url(@report_month)
    click_on "Destroy this report month", match: :first

    assert_text "Report month was successfully destroyed"
  end
end
