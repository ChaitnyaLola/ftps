class FtpfilesController < ApplicationController
  before_action :set_ftpfile, only: [:show, :edit, :update, :destroy]

  # GET /ftpfiles
  # GET /ftpfiles.json
  def index
    @ftpfiles = Ftpfile.all
  end

  # GET /ftpfiles/1
  # GET /ftpfiles/1.json
  def show
  end

  # GET /ftpfiles/new
  def new
    @ftpfile = Ftpfile.new
  end

  # GET /ftpfiles/1/edit
  def edit
  end

  # POST /ftpfiles
  # POST /ftpfiles.json
  def create
    @ftpfile = Ftpfile.new(ftpfile_params)

    respond_to do |format|
      if @ftpfile.save
        format.html { redirect_to @ftpfile, notice: 'Ftpfile was successfully created.' }
        format.json { render :show, status: :created, location: @ftpfile }
      else
        format.html { render :new }
        format.json { render json: @ftpfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ftpfiles/1
  # PATCH/PUT /ftpfiles/1.json
  def update
    respond_to do |format|
      if @ftpfile.update(ftpfile_params)
        format.html { redirect_to @ftpfile, notice: 'Ftpfile was successfully updated.' }
        format.json { render :show, status: :ok, location: @ftpfile }
      else
        format.html { render :edit }
        format.json { render json: @ftpfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ftpfiles/1
  # DELETE /ftpfiles/1.json
  def destroy
    @ftpfile.destroy
    respond_to do |format|
      format.html { redirect_to ftpfiles_url, notice: 'Ftpfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ftpfile
      @ftpfile = Ftpfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ftpfile_params
      params.require(:ftpfile).permit(:ftpcr_id, :file_name)
    end
end
