class ReportMonthsController < ApplicationController
  before_action :set_report_month, only: %i[ show edit update destroy ]
  before_action :set_months, only: %i[ new edit]

  # GET /report_months or /report_months.json
  def index
    @report_months = ReportMonth.all
  end

  # GET /report_months/1 or /report_months/1.json
  def show
  end

  # GET /report_months/new
  def new
    @report_month = ReportMonth.new
  end

  # GET /report_months/1/edit
  def edit
  end

  # POST /report_months or /report_months.json
  def create
    @report_month = ReportMonth.new(report_month_params)

    respond_to do |format|
      if @report_month.save
        format.html { redirect_to report_months_path(@report_month), notice: "Report month was successfully created." }
        format.json { render :show, status: :created, location: @report_month }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_months/1 or /report_months/1.json
  def update
    respond_to do |format|
      if @report_month.update(report_month_params)
        format.html { redirect_to report_months_path(@report_month), notice: "Report month was successfully updated." }
        format.json { render :show, status: :ok, location: @report_month }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_months/1 or /report_months/1.json
  def destroy
    @report_month.destroy

    respond_to do |format|
      format.html { redirect_to report_months_url, notice: "Report month was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_months
    @months = [['Jan/23'],['Fev/23'],['Mar/23'],['Abr/23'],['Mai/23'],['Jun/23'],['Jul/23'],
               ['Ago/23'],['Set/23'],['Out/23'],['Nov/23'],['Dez/23']]
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_report_month
      @report_month = ReportMonth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_month_params
      params.require(:report_month).permit(:investing, :entries, :expense, :description, :profit_month,
                                           :month)
    end
end
