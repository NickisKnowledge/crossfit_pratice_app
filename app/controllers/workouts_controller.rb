class WorkoutsController < ApplicationController

  # GET: /workouts
  get "/workouts" do
    erb :"/workouts/index.html"
  end

  # GET: /workouts/new
  get "/workouts/new" do
    erb :"/workouts/new.html"
  end


  # POST: /workouts
  post "/workouts" do
    workout = Workout.new(params)
    workout.save
    #binding.pry
    redirect "/workouts/#{workout.id}"
  end

  # GET: /workouts/5
  get "/workouts/:id" do
    #binding.pry (look at params hash)
    @workout = Workout.find(params[:id])
    erb :"/workouts/show.html"
  end

  # GET: /workouts/5/edit
  get "/workouts/:id/edit" do
    erb :"/workouts/edit.html"
  end

  # PATCH: /workouts/5
  patch "/workouts/:id" do
    redirect "/workouts/:id"
  end

  # DELETE: /workouts/5/delete
  delete "/workouts/:id/delete" do
    redirect "/workouts"
  end
end
