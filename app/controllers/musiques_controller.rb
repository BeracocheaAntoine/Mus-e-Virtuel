class MusiquesController < ApplicationController
  before_action :set_musique, only: [:show, :edit, :update, :destroy]

  # GET /musiques
  # GET /musiques.json
  def index
    @musiques = Musique.all
  end

  # GET /musiques/1
  # GET /musiques/1.json
  def show
  end

  # GET /musiques/new
  def new
    @musique = Musique.new
  end

  # GET /musiques/1/edit
  def edit
  end

  # POST /musiques
  # POST /musiques.json
  def create
    @musique = Musique.new(musique_params)

    respond_to do |format|
      if @musique.save
        format.html { redirect_to @musique, notice: 'Musique was successfully created.' }
        format.json { render :show, status: :created, location: @musique }
      else
        format.html { render :new }
        format.json { render json: @musique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musiques/1
  # PATCH/PUT /musiques/1.json
  def update
    respond_to do |format|
      if @musique.update(musique_params)
        format.html { redirect_to @musique, notice: 'Musique was successfully updated.' }
        format.json { render :show, status: :ok, location: @musique }
      else
        format.html { render :edit }
        format.json { render json: @musique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musiques/1
  # DELETE /musiques/1.json
  def destroy
    @musique.destroy
    respond_to do |format|
      format.html { redirect_to musiques_url, notice: 'Musique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musique
      @musique = Musique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musique_params
      params.require(:musique).permit(:photo, :nom, :auteur, :date)
    end
end
