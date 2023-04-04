# frozen_string_literal: true

class GrainJarsController < ApplicationController
  before_action :set_grain_jar, only: %i[show edit update destroy]

  # GET /grain_jars or /grain_jars.json
  def index
    @grain_jars = GrainJar.all
  end

  # GET /grain_jars/1 or /grain_jars/1.json
  def show; end

  # GET /grain_jars/new
  def new
    @grain_jar = GrainJar.new
  end

  # GET /grain_jars/1/edit
  def edit; end

  # POST /grain_jars or /grain_jars.json
  def create
    @grain_jar = GrainJar.new(grain_jar_params)

    respond_to do |format|
      if @grain_jar.save
        format.html { redirect_to grain_jar_url(@grain_jar), notice: 'Grain jar was successfully created.' }
        format.json { render :show, status: :created, location: @grain_jar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grain_jar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grain_jars/1 or /grain_jars/1.json
  def update
    respond_to do |format|
      if @grain_jar.update(grain_jar_params)
        format.html { redirect_to grain_jar_url(@grain_jar), notice: 'Grain jar was successfully updated.' }
        format.json { render :show, status: :ok, location: @grain_jar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grain_jar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grain_jars/1 or /grain_jars/1.json
  def destroy
    @grain_jar.destroy

    respond_to do |format|
      format.html { redirect_to grain_jars_url, notice: 'Grain jar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_grain_jar
    @grain_jar = GrainJar.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def grain_jar_params
    params.require(:grain_jar).permit(:retired, :innoculated, :shaken, :type, :name)
  end
end
