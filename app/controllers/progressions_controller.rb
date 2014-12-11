class ProgressionsController < ApplicationController
  before_action :set_progression, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /progressions
  # GET /progressions.json
  def index
    @progressions = Progression.all
  end

  # GET /progressions/1
  # GET /progressions/1.json
  def show
    
  end

  # GET /progressions/new
  def new
    @progression = Progression.new
    @ordered_chord = OrderedChord.new
    @chords = Chord.all


  end

  # GET /progressions/1/edit
  def edit
  end

  # POST /progressions
  # POST /progressions.json
  def create
    
    @progression = current_user.progressions.new progression_params 

    # @progression.ordered_chords.first.user_id = current_user.id

    respond_to do |format|
      if @progression.save

        session[:progression].each_with_index do |chord_name, index|
        @progression.ordered_chords.create(chord_name: chord_name, order: index)
        end

        session[:progression] = []

        format.html { redirect_to @progression, notice: 'Progression was successfully created.' }
        format.json { render :show, status: :created, location: @progression }
      else
        format.html { render :new }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progressions/1
  # PATCH/PUT /progressions/1.json
  def update
    respond_to do |format|
      if @progression.update(progression_params)
        format.html { redirect_to @progression, notice: 'Progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @progression }
      else
        format.html { render :edit }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progressions/1
  # DELETE /progressions/1.json
  def destroy
    @progression.destroy
    respond_to do |format|
      format.html { redirect_to progressions_url, notice: 'Progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progression
      @progression = Progression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progression_params
      params.require(:progression).permit(:name, :description, :user_id, ordered_chords_attributes: [:order, :chord_name, :progression_id])
    end
end
