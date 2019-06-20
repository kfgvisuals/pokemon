class PokebagsController < ApplicationController
  before_action :set_pokebag, only: [:show, :edit, :update, :destroy]

  # GET /pokebags
  # GET /pokebags.json
  def index
    @pokebags = Pokebag.all
  end

  # GET /pokebags/1
  # GET /pokebags/1.json
  def show
  end

  # GET /pokebags/new
  def new
    @pokebag = Pokebag.new
  end

  # GET /pokebags/1/edit
  def edit
  end

  # POST /pokebags
  # POST /pokebags.json
  def create
    @pokebag = Pokebag.new(pokebag_params)

    respond_to do |format|
      if @pokebag.save
        format.html { redirect_to @pokebag, notice: 'Pokebag was successfully created.' }
        format.json { render :show, status: :created, location: @pokebag }
      else
        format.html { render :new }
        format.json { render json: @pokebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokebags/1
  # PATCH/PUT /pokebags/1.json
  def update
    respond_to do |format|
      if @pokebag.update(pokebag_params)
        format.html { redirect_to @pokebag, notice: 'Pokebag was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokebag }
      else
        format.html { render :edit }
        format.json { render json: @pokebag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokebags/1
  # DELETE /pokebags/1.json
  def destroy
    @pokebag.destroy
    respond_to do |format|
      format.html { redirect_to pokebags_url, notice: 'Pokebag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokebag
      @pokebag = Pokebag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokebag_params
      params.fetch(:pokebag, {})
    end
end
