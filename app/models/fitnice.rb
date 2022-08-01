class Fitnice < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :exercise
  belongs_to :targetmusclecategory

  def self.find_by_category(input)
    category = Category.find_by(name: input.capitalize)
    return self.where(category: category)
  end

  def self.find_by_targetmusclecategory(input)
    targetmusclecategory = Targetmusclecategory.find_by(name: input.capitalize)
    return self.where(targetmusclecategory: targetmusclecategory)
  end

  def self.find_by_exercise(input)
    exercise = Exercise.find_by(name: input.capitalize)
    return self.where(exercise: exercise)
  end


  def transform_fitnice 
    return {
      author: self.user.username,
      category: self.category.name,
      exercise: self.exercise.name,
      targetmusclecategory: self.targetmusclecategory.name,
      body: self.body,
      posted: self.created_at, 
      edited: self.updated_at
    }
  end
end
