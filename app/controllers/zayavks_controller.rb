class ZayavksController < ApplicationController
  before_action :set_zayavk, only: [:show, :edit, :update, :destroy]

  # GET /zayavks
  # GET /zayavks.json
  def index
    @zayavks = Zayavk.all
  end

  # GET /zayavks/1
  # GET /zayavks/1.json
  def show
  end

  # GET /zayavks/new
  def new
    @zayavk = Zayavk.new
  end

  # GET /zayavks/1/edit
  def edit
  end

  # POST /zayavks
  # POST /zayavks.json
  def create
    @zayavk = Zayavk.new(zayavk_params)

    respond_to do |format|
      if @zayavk.save
        format.html { redirect_to @zayavk, notice: 'Заявка была успешно создана.' }
        format.json { render :show, status: :created, location: @zayavk }
      else
        format.html { render :new }
        format.json { render json: @zayavk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zayavks/1
  # PATCH/PUT /zayavks/1.json
  def update
    respond_to do |format|
      if @zayavk.update(zayavk_params)
        format.html { redirect_to @zayavk, notice: 'Заявка была успешно изменена.' }
        format.json { render :show, status: :ok, location: @zayavk }
      else
        format.html { render :edit }
        format.json { render json: @zayavk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zayavks/1
  # DELETE /zayavks/1.json
  def destroy
    @zayavk.destroy
    respond_to do |format|
      format.html { redirect_to zayavks_url, notice: 'Заявка была успешно удалена.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zayavk
      @zayavk = Zayavk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zayavk_params
      params.require(:zayavk).permit(:podr, :fio, :telephone, :dolzh, :servers, :infosyst, :soglos)
    end
end
