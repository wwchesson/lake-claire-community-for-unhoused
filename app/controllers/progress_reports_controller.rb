class ProgressReportsController < ApplicationController
  before_action :set_progress_report, only: %i[ show update destroy ]

  # GET /progress_reports
  def index
    @progress_reports = ProgressReport.all

    render json: @progress_reports
  end

  # GET /progress_reports/1
  def show
    render json: @progress_report
  end

  # POST /progress_reports
  def create
    @progress_report = ProgressReport.new(progress_report_params)

    if @progress_report.save
      render json: @progress_report, status: :created, location: @progress_report
    else
      render json: @progress_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /progress_reports/1
  def update
    if @progress_report.update(progress_report_params)
      render json: @progress_report
    else
      render json: @progress_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /progress_reports/1
  def destroy
    @progress_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_report
      @progress_report = ProgressReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def progress_report_params
      params.require(:progress_report).permit(:client_id, :activity_id, :teacher_id, :comments, :progress, :graduate)
    end
end
