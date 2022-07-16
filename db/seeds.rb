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


fitnice_categories = ["Arms", "Legs", "Chest", "Back", "FitNice", "Bodybuilding", "Cardio", "Shred", "KettleBells", "Barbell Sets", "Training Bench", "Dumbbell Sets", "Treadmill", "Stationary Bicycle", "Rowing Machine", "Resistance Bands", "Squat Rack", "cable machine", "Leg Curl Machine", "Leg Extension Machine", "seated Row Machine", "Lat Machine", "Shoulder Press Machine", "Leg Press Machine"]

if Category.all.length == 0 
    fitnice_categories.each do |category|
        Category.create(name: category)
            puts "created #{category} category"
    end
end


