class CreateWorkouts < ActiveRecord::Migration
# command line code: corneal model Workout exercise duration:integer
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.integer :duration

      t.timestamps null: false
    end
  end
end
