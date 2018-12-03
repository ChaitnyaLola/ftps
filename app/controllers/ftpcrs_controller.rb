class FtpcrsController < ApplicationController
  before_action :set_ftpcr, only: [:show, :edit, :update, :destroy]

  # GET /ftpcrs
  # GET /ftpcrs.json
  def index
    @ftpcrs = Ftpcr.all
  end

  # GET /ftpcrs/1
  # GET /ftpcrs/1.json
  def show
  end

  # GET /ftpcrs/new
  def new
    @ftpcr = Ftpcr.new
  end

  # GET /ftpcrs/1/edit
  def edit
  end

  # POST /ftpcrs
  # POST /ftpcrs.json
  def create
    @ftpcr = Ftpcr.new(ftpcr_params)

    respond_to do |format|
      if @ftpcr.save
        format.html { redirect_to @ftpcr, notice: 'Ftpcr was successfully created.' }
        format.json { render :show, status: :created, location: @ftpcr }
      else
        format.html { render :new }
        format.json { render json: @ftpcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ftpcrs/1
  # PATCH/PUT /ftpcrs/1.json
  def update
    respond_to do |format|
      if @ftpcr.update(ftpcr_params)
        format.html { redirect_to @ftpcr, notice: 'Ftpcr was successfully updated.' }
        format.json { render :show, status: :ok, location: @ftpcr }
      else
        format.html { render :edit }
        format.json { render json: @ftpcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ftpcrs/1
  # DELETE /ftpcrs/1.json
  def destroy
    @ftpcr.destroy
    respond_to do |format|
      format.html { redirect_to ftpcrs_url, notice: 'Ftpcr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ftpcr
      @ftpcr = Ftpcr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ftpcr_params
      params.require(:ftpcr).permit(:ip, :username, :password, :source_location)
    end
end
