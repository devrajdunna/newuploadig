class CrkpuramdataController < ApplicationController
  before_action :set_crkpuramdatum, only: [:show, :edit, :update, :destroy]

  # GET /crkpuramdata
  # GET /crkpuramdata.json
  def index
    @crkpuramdata = Crkpuramdatum.all
  end

  # GET /crkpuramdata/1
  # GET /crkpuramdata/1.json
  def show
  end

  # GET /crkpuramdata/new
  def new
    @crkpuramdatum = Crkpuramdatum.new
  end

  # GET /crkpuramdata/1/edit
  def edit
  end

  # POST /crkpuramdata
  # POST /crkpuramdata.json
  def create
    @crkpuramdatum = Crkpuramdatum.new(crkpuramdatum_params)

    respond_to do |format|
      if @crkpuramdatum.save
        format.html { redirect_to @crkpuramdatum, notice: 'Crkpuramdatum was successfully created.' }
        format.json { render :show, status: :created, location: @crkpuramdatum }
      else
        format.html { render :new }
        format.json { render json: @crkpuramdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crkpuramdata/1
  # PATCH/PUT /crkpuramdata/1.json
  def update
    respond_to do |format|
      if @crkpuramdatum.update(crkpuramdatum_params)
        format.html { redirect_to @crkpuramdatum, notice: 'Crkpuramdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @crkpuramdatum }
      else
        format.html { render :edit }
        format.json { render json: @crkpuramdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crkpuramdata/1
  # DELETE /crkpuramdata/1.json
  def destroy
    @crkpuramdatum.destroy
    respond_to do |format|
      format.html { redirect_to crkpuramdata_url, notice: 'Crkpuramdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crkpuramdatum
      @crkpuramdatum = Crkpuramdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crkpuramdatum_params
      params.require(:crkpuramdatum).permit(:full_name, :care_of, :adhar, :mobile, :bank_name, :ifsccode, :account_number)
    end
end
