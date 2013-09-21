class BoxScoresController < ApplicationController
  before_action :set_box_score, only: [:show, :edit, :update, :destroy]

  # GET /box_scores
  # GET /box_scores.json
  def index
    @box_scores = BoxScore.all
  end

  # GET /box_scores/1
  # GET /box_scores/1.json
  def show
  end

  # GET /box_scores/new
  def new
    @box_score = BoxScore.new
  end

  # GET /box_scores/1/edit
  def edit
  end

  # POST /box_scores
  # POST /box_scores.json
  def create
    @box_score = BoxScore.new(box_score_params)

    respond_to do |format|
      if @box_score.save
        format.html { redirect_to @box_score, notice: 'Box score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @box_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @box_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /box_scores/1
  # PATCH/PUT /box_scores/1.json
  def update
    respond_to do |format|
      if @box_score.update(box_score_params)
        format.html { redirect_to @box_score, notice: 'Box score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @box_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /box_scores/1
  # DELETE /box_scores/1.json
  def destroy
    @box_score.destroy
    respond_to do |format|
      format.html { redirect_to box_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box_score
      @box_score = BoxScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def box_score_params
      params.require(:box_score).permit(:gid_espn, :status, :date)
    end
end
