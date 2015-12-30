class Api::ExerciseNamesController < ApplicationController


  # GET /exercise_names
  # GET /exercise_names.json
  def index
    @exercise_names = ExerciseName.all
  end

  # GET /exercise_names/1
  # GET /exercise_names/1.json
  def show
  end
end
