require "test_helper"

class ReportDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_day = report_days(:one)
  end

  test "should get index" do
    get report_days_url
    assert_response :success
  end

  test "should get new" do
    get new_report_day_url
    assert_response :success
  end

  test "should create report_day" do
    assert_difference("ReportDay.count") do
      post report_days_url, params: { report_day: { bread_invest: @report_day.bread_invest, cake_invest: @report_day.cake_invest, card: @report_day.card, date: @report_day.date, description: @report_day.description, entries: @report_day.entries, expense: @report_day.expense, investing: @report_day.investing, money: @report_day.money, profit: @report_day.profit, weekday: @report_day.weekday } }
    end

    assert_redirected_to report_day_url(ReportDay.last)
  end

  test "should show report_day" do
    get report_day_url(@report_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_day_url(@report_day)
    assert_response :success
  end

  test "should update report_day" do
    patch report_day_url(@report_day), params: { report_day: { bread_invest: @report_day.bread_invest, cake_invest: @report_day.cake_invest, card: @report_day.card, date: @report_day.date, description: @report_day.description, entries: @report_day.entries, expense: @report_day.expense, investing: @report_day.investing, money: @report_day.money, profit: @report_day.profit, weekday: @report_day.weekday } }
    assert_redirected_to report_day_url(@report_day)
  end

  test "should destroy report_day" do
    assert_difference("ReportDay.count", -1) do
      delete report_day_url(@report_day)
    end

    assert_redirected_to report_days_url
  end
end
