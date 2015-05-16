class KnowledgebasesController < ApplicationController
  before_action :set_knowledgebase, only: [:show, :edit, :update, :destroy]

  # GET /knowledgebases
  # GET /knowledgebases.json
  def index
    @knowledgebases = Knowledgebase.all
  end

  # GET /knowledgebases/1
  # GET /knowledgebases/1.json
  def show
  end

  # GET /knowledgebases/new
  def new
    @knowledgebase = Knowledgebase.new
  end

  # GET /knowledgebases/1/edit
  def edit
  end

  # POST /knowledgebases
  # POST /knowledgebases.json
  def create
    @knowledgebase = Knowledgebase.new(knowledgebase_params)

    respond_to do |format|
      if @knowledgebase.save
        format.html { redirect_to @knowledgebase, notice: 'Knowledgebase was successfully created.' }
        format.json { render :show, status: :created, location: @knowledgebase }
      else
        format.html { render :new }
        format.json { render json: @knowledgebase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowledgebases/1
  # PATCH/PUT /knowledgebases/1.json
  def update
    respond_to do |format|
      if @knowledgebase.update(knowledgebase_params)
        format.html { redirect_to @knowledgebase, notice: 'Knowledgebase was successfully updated.' }
        format.json { render :show, status: :ok, location: @knowledgebase }
      else
        format.html { render :edit }
        format.json { render json: @knowledgebase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledgebases/1
  # DELETE /knowledgebases/1.json
  def destroy
    @knowledgebase.destroy
    respond_to do |format|
      format.html { redirect_to knowledgebases_url, notice: 'Knowledgebase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knowledgebase
      @knowledgebase = Knowledgebase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knowledgebase_params
      params.require(:knowledgebase).permit(:name)
    end
end
