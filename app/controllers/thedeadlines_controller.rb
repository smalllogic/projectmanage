class ThedeadlinesController < ApplicationController
  before_action :set_thedeadline, only: %i[ show edit update destroy ]

  # GET /thedeadlines or /thedeadlines.json
  def index
    @thedeadlines = Thedeadline.all
  end

  # GET /thedeadlines/1 or /thedeadlines/1.json
  def show
  end

  # GET /thedeadlines/new
  def new
    @thedeadline = Thedeadline.new
  end

  # GET /thedeadlines/1/edit
  def edit
  end

  # POST /thedeadlines or /thedeadlines.json
  def create
    @thedeadline = Thedeadline.new(thedeadline_params)

    respond_to do |format|
      if @thedeadline.save
        format.html { redirect_to thedeadline_url(@thedeadline), notice: "Thedeadline was successfully created." }
        format.json { render :show, status: :created, location: @thedeadline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thedeadline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thedeadlines/1 or /thedeadlines/1.json
  def update
    respond_to do |format|
      if @thedeadline.update(thedeadline_params)
        format.html { redirect_to thedeadline_url(@thedeadline), notice: "Thedeadline was successfully updated." }
        format.json { render :show, status: :ok, location: @thedeadline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thedeadline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thedeadlines/1 or /thedeadlines/1.json
  def destroy
    @thedeadline.destroy

    respond_to do |format|
      format.html { redirect_to thedeadlines_url, notice: "Thedeadline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thedeadline
      @thedeadline = Thedeadline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thedeadline_params
      params.require(:thedeadline).permit(:deadlinetime)
    end
end
