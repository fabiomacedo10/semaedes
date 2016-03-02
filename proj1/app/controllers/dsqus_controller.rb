class DsqusController < ApplicationController
  before_action :set_dsqu, only: [:show, :edit, :update, :destroy]

  # GET /dsqus
  # GET /dsqus.json
  def index
    @dsqus = Dsqu.all
  end

  # GET /dsqus/1
  # GET /dsqus/1.json
  def show
  end

  # GET /dsqus/new
  def new
    @dsqu = Dsqu.new
  end

  # GET /dsqus/1/edit
  def edit
  end

  # POST /dsqus
  # POST /dsqus.json
  def create
    @dsqu = Dsqu.new(dsqu_params)

    respond_to do |format|
      if @dsqu.save
        format.html { redirect_to @dsqu, notice: 'Dsqu was successfully created.' }
        format.json { render :show, status: :created, location: @dsqu }
      else
        format.html { render :new }
        format.json { render json: @dsqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dsqus/1
  # PATCH/PUT /dsqus/1.json
  def update
    respond_to do |format|
      if @dsqu.update(dsqu_params)
        format.html { redirect_to @dsqu, notice: 'Dsqu was successfully updated.' }
        format.json { render :show, status: :ok, location: @dsqu }
      else
        format.html { render :edit }
        format.json { render json: @dsqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dsqus/1
  # DELETE /dsqus/1.json
  def destroy
    @dsqu.destroy
    respond_to do |format|
      format.html { redirect_to dsqus_url, notice: 'Dsqu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dsqu
      @dsqu = Dsqu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dsqu_params
      params.require(:dsqu).permit(:user_name, :body, :issue_id)
    end
end
