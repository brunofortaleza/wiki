class GuidancesController < ApplicationController
  before_action :set_guidance, only: [:show, :edit, :update, :destroy]

  # GET /guidances
  # GET /guidances.json
  def index
    @guidances = Guidance.all
  end

  # GET /guidances/1
  # GET /guidances/1.json
  def show
    @instructions = @guidance.instructions
  end

  # GET /guidances/new
  def new
    @guidance = Guidance.new
    # O build inicializa a página com 1 nested já renderizado
    @instrution = @guidance.instructions.build
    @system = System.all
  end

  # GET /guidances/1/edit
  def edit
  end

  # POST /guidances
  # POST /guidances.json
  def create
    @guidance = Guidance.new(guidance_params)

    respond_to do |format|
      if @guidance.save
        format.html { redirect_to @guidance, notice: 'Guidance was successfully created.' }
        format.json { render :show, status: :created, location: @guidance }
      else
        format.html { render :new }
        format.json { render json: @guidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guidances/1
  # PATCH/PUT /guidances/1.json
  def update
    respond_to do |format|
      if @guidance.update(guidance_params)
        format.html { redirect_to @guidance, notice: 'Guidance was successfully updated.' }
        format.json { render :show, status: :ok, location: @guidance }
      else
        format.html { render :edit }
        format.json { render json: @guidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guidances/1
  # DELETE /guidances/1.json
  def destroy
    @guidance.destroy
    respond_to do |format|
      format.html { redirect_to guidances_url, notice: 'Guidance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guidance
      @guidance = Guidance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guidance_params
      params.require(:guidance).permit(:title, :system_id, instructions_attributes: [:id, :description, :image, :picture, {documents: []}, :_destroy])
    end
end
