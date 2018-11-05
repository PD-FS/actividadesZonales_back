class UpZsController < ApplicationController
  before_action :set_upz, only: [:show, :edit, :update, :destroy]

  # GET /upzs
  # GET /upzs.json
  def index
    @upzs = Upz.all
  end

  # GET /upzs/1
  # GET /upzs/1.json
  def show
  end

  # GET /upzs/new
  def new
    @upz = Upz.new
  end

  # GET /upzs/1/edit
  def edit
  end

  # POST /upzs
  # POST /upzs.json
  def create
    @upz = Upz.new(upz_params)

    respond_to do |format|
      if @upz.save
        format.html { redirect_to @upz, notice: 'Upz was successfully created.' }
        format.json { render :show, status: :created, location: @upz }
      else
        format.html { render :new }
        format.json { render json: @upz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upzs/1
  # PATCH/PUT /upzs/1.json
  def update
    respond_to do |format|
      if @upz.update(upz_params)
        format.html { redirect_to @upz, notice: 'Upz was successfully updated.' }
        format.json { render :show, status: :ok, location: @upz }
      else
        format.html { render :edit }
        format.json { render json: @upz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upzs/1
  # DELETE /upzs/1.json
  def destroy
    @upz.destroy
    respond_to do |format|
      format.html { redirect_to upzs_url, notice: 'Upz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upz
      @upz = Upz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upz_params
      params.require(:upz).permit(:name, :district_area_id, :shape, :latitude, :longitude, :code)
    end
end
