class ReportDaysController < ApplicationController
  before_action :set_report_day, only: %i[ show edit update destroy ]
  before_action :set_weekdays, only: %i[ new edit update]


  # GET /report_days or /report_days.json
  def index
    @report_days = ReportDay.all
    # @report_days = ReportDay.where("to_char(date, 'MM') = '#{params[:id]}'")
    # @total_invest = ReportDay.where('created_at::date = now()::date ').pluck(:cake_invest).inject(0,:+)
    #               + ReportDay.where('created_at::date = now()::date ').pluck(:bread_invest).inject(0,:+)
    # @total_invest = "#{cake_invest} + #{bread_invest}"

  end

  def index_home
    @report_days = ReportDay.all
    @months = ReportDay.all.pluck(:date).uniq.map { |mon| Date::MONTHNAMES[mon.to_date.month] }
  end

  # GET /report_days/1 or /report_days/1.json
  def show
  end

  # GET /report_days/new
  def new

    @report_day = ReportDay.new
  end

  # GET /report_days/1/edit
  def edit
  end

  # POST /report_days or /report_days.json
  def create
    @report_day = ReportDay.new(report_day_params)

    respond_to do |format|
      if @report_day.save
        format.html { redirect_to report_days_url(@report_day), notice: "Report day was successfully created." }
        format.json { render :show, status: :created, location: @report_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_days/1 or /report_days/1.json
  def update
    respond_to do |format|
      if @report_day.update(report_day_params)
        format.html { redirect_to report_days_url(@report_day), notice: "Report day was successfully updated." }
        format.json { render :show, status: :ok, location: @report_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_days/1 or /report_days/1.json
  def destroy
    @report_day.destroy

    respond_to do |format|
      format.html { redirect_to report_days_url, notice: "Report day was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_weekdays
        @weekdays = [['Segunda (Parque)'],['Terça (Inspire)'],['Quarta (Jandira)'],['Quinta (Viva-Mais)'],['Sexta (Inspire)'],['Sábado (Parque)']]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_report_day
      @report_day = ReportDay.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_day_params
      params.require(:report_day).permit(:weekday, :date, :cake_invest, :bread_invest, :investing, :card, :money, :entries, :expense, :description, :profit)
    end
end
