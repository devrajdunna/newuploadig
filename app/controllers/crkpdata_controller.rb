class CrkpdataController < ApplicationController
  before_action :set_crkpdatum, only: [:show, :edit, :update, :destroy]

  # GET /crkpdata
  # GET /crkpdata.json
  def index
    @crkpdata = Crkpdatum.all
  end

  # GET /crkpdata/1
  # GET /crkpdata/1.json
  def show
  end

  # GET /crkpdata/new
  def new
    @crkpdatum = Crkpdatum.new
  end

  # GET /crkpdata/1/edit
  def edit
  end

  # POST /crkpdata
  # POST /crkpdata.json
  def create
    @crkpdatum = Crkpdatum.new(crkpdatum_params)

    respond_to do |format|
      if @crkpdatum.save
        format.html { redirect_to @crkpdatum, notice: 'Crkpdatum was successfully created.' }
        format.json { render :show, status: :created, location: @crkpdatum }
      else
        format.html { render :new }
        format.json { render json: @crkpdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crkpdata/1
  # PATCH/PUT /crkpdata/1.json
  def update
    respond_to do |format|
      if @crkpdatum.update(crkpdatum_params)
        format.html { redirect_to @crkpdatum, notice: 'Crkpdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @crkpdatum }
      else
        format.html { render :edit }
        format.json { render json: @crkpdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crkpdata/1
  # DELETE /crkpdata/1.json
  def destroy
    @crkpdatum.destroy
    respond_to do |format|
      format.html { redirect_to crkpdata_url, notice: 'Crkpdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crkpdatum
      @crkpdatum = Crkpdatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crkpdatum_params
      params.require(:crkpdatum).permit(:name, :adhar, :mobile)
    end
end
