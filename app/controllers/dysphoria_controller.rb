class DysphoriaController < ApplicationController
  before_action :set_dysphorium, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!
  # GET /dysphoria
  # GET /dysphoria.json
  def index
    @dysphoria = Dysphorium.all
  end

  # GET /dysphoria/1
  # GET /dysphoria/1.json
  def show
  end

  # GET /dysphoria/new
  def new
    @dysphorium = Dysphorium.new
  end

  # GET /dysphoria/1/edit
  def edit
  end

  # POST /dysphoria
  # POST /dysphoria.json
  def create
    @dysphorium = Dysphorium.new(dysphorium_params)

    respond_to do |format|
      if @dysphorium.save
        format.html { redirect_to @dysphorium, notice: 'Dysphorium was successfully created.' }
        format.json { render :show, status: :created, location: @dysphorium }
      else
        format.html { render :new }
        format.json { render json: @dysphorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dysphoria/1
  # PATCH/PUT /dysphoria/1.json
  def update
    respond_to do |format|
      if @dysphorium.update(dysphorium_params)
        format.html { redirect_to @dysphorium, notice: 'Dysphorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @dysphorium }
      else
        format.html { render :edit }
        format.json { render json: @dysphorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dysphoria/1
  # DELETE /dysphoria/1.json
  def destroy
    @dysphorium.destroy
    respond_to do |format|
      format.html { redirect_to dysphoria_url, notice: 'Dysphorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dysphorium
      @dysphorium = Dysphorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def dysphorium_params
      params.require(:dysphorium).permit(:name, :description, :photo, :photo_cache)
    end
  end
