class ExerciseNamesController < ApplicationController
  before_action :set_exercise_name, only: [:show, :edit, :update, :destroy]

  # GET /exercise_names
  # GET /exercise_names.json
  def index
    @exercise_names = ExerciseName.all
  end

  # GET /exercise_names/1
  # GET /exercise_names/1.json
  def show
  end

  # GET /exercise_names/new
  def new
    @exercise_name = ExerciseName.new
  end

  # GET /exercise_names/1/edit
  def edit
  end

  # POST /exercise_names
  # POST /exercise_names.json
  def create
    @exercise_name = ExerciseName.new(exercise_name_params)

    respond_to do |format|
      if @exercise_name.save
        format.html { redirect_to @exercise_name, notice: 'Exercise name was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_name }
      else
        format.html { render :new }
        format.json { render json: @exercise_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_names/1
  # PATCH/PUT /exercise_names/1.json
  def update
    respond_to do |format|
      if @exercise_name.update(exercise_name_params)
        format.html { redirect_to @exercise_name, notice: 'Exercise name was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_name }
      else
        format.html { render :edit }
        format.json { render json: @exercise_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_names/1
  # DELETE /exercise_names/1.json
  def destroy
    @exercise_name.destroy
    respond_to do |format|
      format.html { redirect_to exercise_names_url, notice: 'Exercise name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_name
      @exercise_name = ExerciseName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_name_params
      params.require(:exercise_name).permit(:name)
    end
end
