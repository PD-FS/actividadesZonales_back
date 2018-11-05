class InterestByCathegoriesController < ApplicationController
  before_action :set_interest_by_cathegory, only: [:show, :edit, :update, :destroy]

  # GET /interest_by_cathegories
  # GET /interest_by_cathegories.json
  def index
    @interest_by_cathegories = InterestByCathegory.all
  end

  # GET /interest_by_cathegories/1
  # GET /interest_by_cathegories/1.json
  def show
  end

  # GET /interest_by_cathegories/new
  def new
    @interest_by_cathegory = InterestByCathegory.new
  end

  # GET /interest_by_cathegories/1/edit
  def edit
  end

  # POST /interest_by_cathegories
  # POST /interest_by_cathegories.json
  def create
    @interest_by_cathegory = InterestByCathegory.new(interest_by_cathegory_params)

    respond_to do |format|
      if @interest_by_cathegory.save
        format.html { redirect_to @interest_by_cathegory, notice: 'Interest by cathegory was successfully created.' }
        format.json { render :show, status: :created, location: @interest_by_cathegory }
      else
        format.html { render :new }
        format.json { render json: @interest_by_cathegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_by_cathegories/1
  # PATCH/PUT /interest_by_cathegories/1.json
  def update
    respond_to do |format|
      if @interest_by_cathegory.update(interest_by_cathegory_params)
        format.html { redirect_to @interest_by_cathegory, notice: 'Interest by cathegory was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_by_cathegory }
      else
        format.html { render :edit }
        format.json { render json: @interest_by_cathegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_by_cathegories/1
  # DELETE /interest_by_cathegories/1.json
  def destroy
    @interest_by_cathegory.destroy
    respond_to do |format|
      format.html { redirect_to interest_by_cathegories_url, notice: 'Interest by cathegory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_by_cathegory
      @interest_by_cathegory = InterestByCathegory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_by_cathegory_params
      params.require(:interest_by_cathegory).permit(:user_id, :category_id)
    end
end
