class BloodTypesController < ApplicationController
  before_action :set_blood_type, only: [:show, :edit, :update, :destroy]

  # GET /blood_types
  # GET /blood_types.json
  def index
    @blood_types = BloodType.all
  end

  # GET /blood_types/1
  # GET /blood_types/1.json
  def show
  end

  # GET /blood_types/new
  def new
    @blood_type = BloodType.new
  end

  # GET /blood_types/1/edit
  def edit
  end

  # POST /blood_types
  # POST /blood_types.json
  def create
    @blood_type = BloodType.new(blood_type_params)

    respond_to do |format|
      if @blood_type.save
        format.html { redirect_to @blood_type, notice: 'Blood type was successfully created.' }
        format.json { render :show, status: :created, location: @blood_type }
      else
        format.html { render :new }
        format.json { render json: @blood_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_types/1
  # PATCH/PUT /blood_types/1.json
  def update
    respond_to do |format|
      if @blood_type.update(blood_type_params)
        format.html { redirect_to @blood_type, notice: 'Blood type was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_type }
      else
        format.html { render :edit }
        format.json { render json: @blood_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_types/1
  # DELETE /blood_types/1.json
  def destroy
    @blood_type.destroy
    respond_to do |format|
      format.html { redirect_to blood_types_url, notice: 'Blood type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_type
      @blood_type = BloodType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_type_params
      params.require(:blood_type).permit(:group, :rh)
    end
end
