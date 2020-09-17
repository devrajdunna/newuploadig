class CrkpuramsController < ApplicationController
  before_action :set_crkpuram, only: [:show, :edit, :update, :destroy]

  # GET /crkpurams
  # GET /crkpurams.json
  def index
    @crkpurams = Crkpuram.all
  end

  # GET /crkpurams/1
  # GET /crkpurams/1.json
  def show
  end

  # GET /crkpurams/new
  def new
    @crkpuram = Crkpuram.new
  end

  # GET /crkpurams/1/edit
  def edit
  end

  # POST /crkpurams
  # POST /crkpurams.json
  def create
    @crkpuram = Crkpuram.new(crkpuram_params)

    respond_to do |format|
      if @crkpuram.save
        format.html { redirect_to @crkpuram, notice: 'Crkpuram was successfully created.' }
        format.json { render :show, status: :created, location: @crkpuram }
      else
        format.html { render :new }
        format.json { render json: @crkpuram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crkpurams/1
  # PATCH/PUT /crkpurams/1.json
  def update
    respond_to do |format|
      if @crkpuram.update(crkpuram_params)
        format.html { redirect_to @crkpuram, notice: 'Crkpuram was successfully updated.' }
        format.json { render :show, status: :ok, location: @crkpuram }
      else
        format.html { render :edit }
        format.json { render json: @crkpuram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crkpurams/1
  # DELETE /crkpurams/1.json
  def destroy
    @crkpuram.destroy
    respond_to do |format|
      format.html { redirect_to crkpurams_url, notice: 'Crkpuram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crkpuram
      @crkpuram = Crkpuram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crkpuram_params
      params.fetch(:crkpuram, {})
    end
end
