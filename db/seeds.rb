# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# muscle_group_categories = ["Arms", "Legs", "Chest", "Back"]
# fitness_target_categories = ["FitNice", "Bodybuilding", "Cardio", "Shred"]
# available_equipment_categories = ["KettleBells", "Barbell Sets", "Training Bench", "Dumbbell Sets", "Treadmill", "Stationary Bicycle", "Rowing Machine", "Resistance Bands", "Squat Rack", "cable machine", "Leg Curl Machine", "Leg Extension Machine", "seated Row Machine", "Lat Machine", "Shoulder Press Machine", "Leg Press Machine" ]


fitnice_categories = ["fitnice", "shred", "bodybuild", "cardio", "crossfit" ]   

if Category.all.length == 0 
    fitnice_categories.each do |category|
        Category.create(name: category)
            puts "created #{category} fitnice category"
    end
end

fitnice_targetmusclecategories = ["calves", "hamstrings", "quadriceps", "glutes", "biceps", "triceps", "forearms", "trapezius", "latissimus dorsi"]


if Targetmusclecategory.all.length == 0 
    fitnice_targetmusclecategories.each do |targetmusclecategory|
        Targetmusclecategory.create(name: targetmusclecategory)
            puts "created #{targetmusclecategory} target targetmuscle category"
    end
end


fitnice_exercises = ["Push Ups", "Barbell bench press", "dumbbell Bench Press", "Incline Dumbbell chest press", "Machine Chest Press", "Dumbbell Fly", 
"Pull Ups", "Assisted Pull Ups", "Wide Grip Lat Pull Downs", "Bent Over Row", "Squats", "Walking Lunges", "Leg Extension Machine", "Leg Curl Machine", 
"Straight Leg Deadlifts", "Weighted Calf Raises", "Do at least 1 exercise per body part", "Handstand Push Up", "Pike Press", "Military Press", "Arnold Presses", 
"Upright Rows", "Lateral Raises", "Rear Delt Raise", "Reverse Fly", "Reverse Pec Dec Machine", "Dips", "Tricep Pullovers", "Tricep Press", "Tricep Kickbacks", 
"Straight Bar Curl", "Preacher Curl or Bicep Curl Macine", "Dumbbell Curl", "Concentration Curls", "Traditional Sit Ups", "Crunches", "Weighted Crunches", 
"Bicycle Crunches", "Leg Raises", "Oblique Crunch", "Plank", "Side Plank", "Back Extension"]

if Exercise.all.length == 0 
    fitnice_exercises.each do |exercise|
        Exercise.create(name: exercise)
            puts "created #{exercise} exercise"
    end
end

# if User.count == 0
#     User.create(username: "erictaz", email: "erictazzyman@gmail.com", password: "password", password_confirmation: "password")
#     User.create(username: "Tyler2", email: "tyler2@gmail.com", password: "password2", password_confirmation: "password2")
# end

