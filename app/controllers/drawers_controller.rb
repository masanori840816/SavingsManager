class DrawersController < ApplicationController
  before_action :set_drawer, only: [:show, :edit, :update, :destroy]

  # GET /drawers
  # GET /drawers.json
  def index
    @drawers = Drawer.all
  end

  # GET /drawers/1
  # GET /drawers/1.json
  def show
  end

  # GET /drawers/new
  def new
    @drawer = Drawer.new
  end

  # GET /drawers/1/edit
  def edit
  end

  # POST /drawers
  # POST /drawers.json
  def create
    @drawer = Drawer.new(drawer_params)

    respond_to do |format|
      if @drawer.save
        format.html { redirect_to @drawer, notice: 'Drawer was successfully created.' }
        format.json { render :show, status: :created, location: @drawer }
      else
        format.html { render :new }
        format.json { render json: @drawer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drawers/1
  # PATCH/PUT /drawers/1.json
  def update
    respond_to do |format|
      if @drawer.update(drawer_params)
        format.html { redirect_to @drawer, notice: 'Drawer was successfully updated.' }
        format.json { render :show, status: :ok, location: @drawer }
      else
        format.html { render :edit }
        format.json { render json: @drawer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drawers/1
  # DELETE /drawers/1.json
  def destroy
    @drawer.destroy
    respond_to do |format|
      format.html { redirect_to drawers_url, notice: 'Drawer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drawer
      @drawer = Drawer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drawer_params
      params.require(:drawer).permit(:DrawerTitle, :TargetAmount, :TargetDate)
    end
end
