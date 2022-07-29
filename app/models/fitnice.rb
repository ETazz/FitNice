class Fitnice < ApplicationRecord
  belongs_to :targetmuscle
  belongs_to :category
  belongs_to :user


  def self.find_by_category(input)
    category = Category.find_by(name: input.capitalize)
    return self.where(category: category)
  end

  def self.find_by_targetmuscle(input)
    targetmuscle = Targetmuscle.find_by(name: input.capitalize)
    return self.where(targetmuscle: targetmuscle)
  end


  def transform_fitnice 
    return {
      author: self.user.username,
      category: self.category.name,
      targetmuscle: self.targetmuscle.name,
      body: self.body,
      posted: self.created_at, 
      edited: self.updated_at
    }
  end
end
