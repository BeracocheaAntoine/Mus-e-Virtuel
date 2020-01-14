class PeinturesController < ApplicationController
  before_action :set_peinture, only: [:show, :edit, :update, :destroy]

  # GET /peintures
  # GET /peintures.json
  def index
    @peintures = Peinture.all
  end

  # GET /peintures/1
  # GET /peintures/1.json
  def show
  end

  # GET /peintures/new
  def new
    @peinture = Peinture.new
  end

  # GET /peintures/1/edit
  def edit
  end

  # POST /peintures
  # POST /peintures.json
  def create
    @peinture = Peinture.new(peinture_params)

    respond_to do |format|
      if @peinture.save
        format.html { redirect_to @peinture, notice: 'Peinture was successfully created.' }
        format.json { render :show, status: :created, location: @peinture }
      else
        format.html { render :new }
        format.json { render json: @peinture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peintures/1
  # PATCH/PUT /peintures/1.json
  def update
    respond_to do |format|
      if @peinture.update(peinture_params)
        format.html { redirect_to @peinture, notice: 'Peinture was successfully updated.' }
        format.json { render :show, status: :ok, location: @peinture }
      else
        format.html { render :edit }
        format.json { render json: @peinture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peintures/1
  # DELETE /peintures/1.json
  def destroy
    @peinture.destroy
    respond_to do |format|
      format.html { redirect_to peintures_url, notice: 'Peinture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peinture
      @peinture = Peinture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peinture_params
      params.require(:peinture).permit(:photo, :nom, :auteur, :date)
    end
end
