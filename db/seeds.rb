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

fitnice_targetmuscles = ["calves", "hamstrings", "quadriceps", "glutes", "biceps", "triceps", "forearms", "trapezius", "latissimus dorsi"]

if Targetmuscle.all.length == 0 
    fitnice_targetmuscles.each do |targetmuscle|
        Targetmuscle.create(name: targetmuscle)
            puts "created #{targetmuscle} target targetmuscle category"
    end
end

if User.count == 0
    User.create(username: "erictaz", email: "erictazzyman@gmail.com", password: "password", password_confirmation: "password")
    User.create(username: "Tyler2", email: "tyler2@gmail.com", password: "password2", password_confirmation: "password2")
end

if Fitnice.count == 0
    Fitnice.create(user_id: 1, category_id: 1, targetmuscle_id: 4, body: "workout test for legs")
    Fitnice.create(user_id: 1, category_id: 2, targetmuscle_id: 2, body: "workout test for arms")
end
