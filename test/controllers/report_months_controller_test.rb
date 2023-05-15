require "test_helper"

class ReportMonthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_month = report_months(:one)
  end

  test "should get index" do
    get report_months_url
    assert_response :success
  end

  test "should get new" do
    get new_report_month_url
    assert_response :success
  end

  test "should create report_month" do
    assert_difference("ReportMonth.count") do
      post report_months_url, params: { report_month: { description: @report_month.description, entries: @report_month.entries, expense: @report_month.expense, investing: @report_month.investing, profit_month: @report_month.profit_month } }
    end

    assert_redirected_to report_month_url(ReportMonth.last)
  end

  test "should show report_month" do
    get report_month_url(@report_month)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_month_url(@report_month)
    assert_response :success
  end

  test "should update report_month" do
    patch report_month_url(@report_month), params: { report_month: { description: @report_month.description, entries: @report_month.entries, expense: @report_month.expense, investing: @report_month.investing, profit_month: @report_month.profit_month } }
    assert_redirected_to report_month_url(@report_month)
  end

  test "should destroy report_month" do
    assert_difference("ReportMonth.count", -1) do
      delete report_month_url(@report_month)
    end

    assert_redirected_to report_months_url
  end
end
