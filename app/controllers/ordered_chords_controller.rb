class OrderedChordsController < ApplicationController
  before_action :set_ordered_chord, only: [:show, :edit, :update, :destroy]

  # GET /ordered_chords
  # GET /ordered_chords.json
  def index
    @ordered_chords = OrderedChord.all
  end

  # GET /ordered_chords/1
  # GET /ordered_chords/1.json
  def show
  end

  # GET /ordered_chords/new
  def new
    @ordered_chord = OrderedChord.new
  end

  # GET /ordered_chords/1/edit
  def edit
  end

  # POST /ordered_chords
  # POST /ordered_chords.json
  def create
    @ordered_chord = OrderedChord.new(ordered_chord_params)

    respond_to do |format|
      if @ordered_chord.save
        format.html { redirect_to @ordered_chord, notice: 'Ordered chord was successfully created.' }
        format.json { render :show, status: :created, location: @ordered_chord }
      else
        format.html { render :new }
        format.json { render json: @ordered_chord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordered_chords/1
  # PATCH/PUT /ordered_chords/1.json
  def update
    respond_to do |format|
      if @ordered_chord.update(ordered_chord_params)
        format.html { redirect_to @ordered_chord, notice: 'Ordered chord was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordered_chord }
      else
        format.html { render :edit }
        format.json { render json: @ordered_chord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordered_chords/1
  # DELETE /ordered_chords/1.json
  def destroy
    @ordered_chord.destroy
    respond_to do |format|
      format.html { redirect_to ordered_chords_url, notice: 'Ordered chord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered_chord
      @ordered_chord = OrderedChord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordered_chord_params
      params.require(:ordered_chord).permit(:order, :main_chord_id, :progessions_id)
    end
end
