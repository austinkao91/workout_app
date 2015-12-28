class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end



  private
end
