class MisensController < ApplicationController
  before_action :set_misen, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!
  # GET /misens
  # GET /misens.json
  def index
    @misens = Misen.all
  end

  # GET /misens/1
  # GET /misens/1.json
  def show
  end

  # GET /misens/new
  def new
    @misen = Misen.new
  end

  # GET /misens/1/edit
  def edit
  end

  # POST /misens
  # POST /misens.json
  def create
    @misen = Misen.new(misen_params)

    respond_to do |format|
      if @misen.save
        format.html { redirect_to @misen, notice: 'Misen was successfully created.' }
        format.json { render :show, status: :created, location: @misen }
      else
        format.html { render :new }
        format.json { render json: @misen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misens/1
  # PATCH/PUT /misens/1.json
  def update
    respond_to do |format|
      if @misen.update(misen_params)
        format.html { redirect_to @misen, notice: 'Misen was successfully updated.' }
        format.json { render :show, status: :ok, location: @misen }
      else
        format.html { render :edit }
        format.json { render json: @misen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misens/1
  # DELETE /misens/1.json
  def destroy
    @misen.destroy
    respond_to do |format|
      format.html { redirect_to misens_url, notice: 'Misen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misen
      @misen = Misen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def misen_params
      params.require(:misen).permit(:name, :description, :photo, :photo_cache)
    end
  end
