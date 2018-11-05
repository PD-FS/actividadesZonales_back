class ActivityPlacesController < ApplicationController
  before_action :set_activity_place, only: [:show, :edit, :update, :destroy]

  # GET /activity_places
  # GET /activity_places.json
  def index
    @activity_places = ActivityPlace.all
  end

  # GET /activity_places/1
  # GET /activity_places/1.json
  def show
  end

  # GET /activity_places/new
  def new
    @activity_place = ActivityPlace.new
  end

  # GET /activity_places/1/edit
  def edit
  end

  # POST /activity_places
  # POST /activity_places.json
  def create
    @activity_place = ActivityPlace.new(activity_place_params)

    respond_to do |format|
      if @activity_place.save
        format.html { redirect_to @activity_place, notice: 'Activity place was successfully created.' }
        format.json { render :show, status: :created, location: @activity_place }
      else
        format.html { render :new }
        format.json { render json: @activity_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_places/1
  # PATCH/PUT /activity_places/1.json
  def update
    respond_to do |format|
      if @activity_place.update(activity_place_params)
        format.html { redirect_to @activity_place, notice: 'Activity place was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_place }
      else
        format.html { render :edit }
        format.json { render json: @activity_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_places/1
  # DELETE /activity_places/1.json
  def destroy
    @activity_place.destroy
    respond_to do |format|
      format.html { redirect_to activity_places_url, notice: 'Activity place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_place
      @activity_place = ActivityPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_place_params
      params.require(:activity_place).permit(:place_id, :activity_id)
    end
end
