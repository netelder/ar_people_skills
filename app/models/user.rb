class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_skills
  has_many :skills, :through => :user_skills
end
