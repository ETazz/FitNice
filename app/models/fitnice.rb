class Fitnice < ApplicationRecord
  belongs_to :targetmusclecategory
  belongs_to :category
  belongs_to :user

  def self.find_by_category(input)
    category = Category.find_by(name: input.capitalize)
    return self.where(category: category)
  end

  def self.find_by_targetmusclecategory(input)
    targetmusclecategory = Targetmusclecategory.find_by(name: input.capitalize)
    return self.where(targetmusclecategory: targetmusclecategory)
  end

  def transform_fitnice 
    return {
      author: self.user.username,
      category: self.category.name,
      targetmusclecategory: self.targetmusclecategory.name,
      body: self.body,
      posted: self.created_at, 
      edited: self.updated_at
    }
  end
end
