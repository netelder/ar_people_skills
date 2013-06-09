class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :users, :through => :user_skills
  # Remember to create a migration!
  validates :name, :uniqueness => :true

  def user_with_proficiency(proficiency)
  end
  
end
