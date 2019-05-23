class RecieptsController < ApplicationController
  before_action :set_reciept, only: [:show, :edit, :update, :destroy]

  # GET /reciepts
  # GET /reciepts.json
  def index
    @reciepts = Reciept.all
  end

  # GET /reciepts/1
  # GET /reciepts/1.json
  def show
  end

  # GET /reciepts/new
  def new
    @reciept = Reciept.new
  end

  # GET /reciepts/1/edit
  def edit
  end

  # POST /reciepts
  # POST /reciepts.json
  def create
    @reciept = Reciept.new(reciept_params)

    respond_to do |format|
      if @reciept.save
        format.html { redirect_to @reciept, notice: 'Reciept was successfully created.' }
        format.json { render :show, status: :created, location: @reciept }
      else
        format.html { render :new }
        format.json { render json: @reciept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reciepts/1
  # PATCH/PUT /reciepts/1.json
  def update
    respond_to do |format|
      if @reciept.update(reciept_params)
        format.html { redirect_to @reciept, notice: 'Reciept was successfully updated.' }
        format.json { render :show, status: :ok, location: @reciept }
      else
        format.html { render :edit }
        format.json { render json: @reciept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reciepts/1
  # DELETE /reciepts/1.json
  def destroy
    @reciept.destroy
    respond_to do |format|
      format.html { redirect_to reciepts_url, notice: 'Reciept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reciept
      @reciept = Reciept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reciept_params
      params.fetch(:reciept, {})
    end
end
