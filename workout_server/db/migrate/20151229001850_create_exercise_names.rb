class CreateExerciseNames < ActiveRecord::Migration
  def change
    create_table :exercise_names do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
