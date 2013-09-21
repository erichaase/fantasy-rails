class BoxScoreEntriesController < ApplicationController
  before_action :set_box_score_entry, only: [:show, :edit, :update, :destroy]

  # GET /box_score_entries
  # GET /box_score_entries.json
  def index
    @box_score_entries = BoxScoreEntry.all
  end

  # GET /box_score_entries/1
  # GET /box_score_entries/1.json
  def show
  end

  # GET /box_score_entries/new
  def new
    @box_score_entry = BoxScoreEntry.new
  end

  # GET /box_score_entries/1/edit
  def edit
  end

  # POST /box_score_entries
  # POST /box_score_entries.json
  def create
    @box_score_entry = BoxScoreEntry.new(box_score_entry_params)

    respond_to do |format|
      if @box_score_entry.save
        format.html { redirect_to @box_score_entry, notice: 'Box score entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @box_score_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @box_score_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /box_score_entries/1
  # PATCH/PUT /box_score_entries/1.json
  def update
    respond_to do |format|
      if @box_score_entry.update(box_score_entry_params)
        format.html { redirect_to @box_score_entry, notice: 'Box score entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @box_score_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /box_score_entries/1
  # DELETE /box_score_entries/1.json
  def destroy
    @box_score_entry.destroy
    respond_to do |format|
      format.html { redirect_to box_score_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box_score_entry
      @box_score_entry = BoxScoreEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def box_score_entry_params
      params.require(:box_score_entry).permit(:pid_espn, :fname, :lname, :status, :min, :fgm, :fga, :tpm, :tpa, :ftm, :fta, :oreb, :reb, :ast, :stl, :blk, :to, :pf, :plus_minus, :pts)
    end
end
