class LastsController < ApplicationController
  before_action :set_last, only: [:show, :edit, :update, :destroy]

  # GET /lasts
  # GET /lasts.json
  def index
    @lasts = Last.all
  end

  # GET /lasts/1
  # GET /lasts/1.json
  def show
  end

  # GET /lasts/new
  def new
    @last = Last.new
  end

  # GET /lasts/1/edit
  def edit
  end

  # POST /lasts
  # POST /lasts.json
  def create
    @last = Last.new(last_params)

    respond_to do |format|
      if @last.save
        format.html { redirect_to @last, notice: 'Last was successfully created.' }
        format.json { render :show, status: :created, location: @last }
      else
        format.html { render :new }
        format.json { render json: @last.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lasts/1
  # PATCH/PUT /lasts/1.json
  def update
    respond_to do |format|
      if @last.update(last_params)
        format.html { redirect_to @last, notice: 'Last was successfully updated.' }
        format.json { render :show, status: :ok, location: @last }
      else
        format.html { render :edit }
        format.json { render json: @last.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lasts/1
  # DELETE /lasts/1.json
  def destroy
    @last.destroy
    respond_to do |format|
      format.html { redirect_to lasts_url, notice: 'Last was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_last
      @last = Last.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def last_params
      params.require(:last).permit(:name, :manager, :description, :date, :image)
    end
end
