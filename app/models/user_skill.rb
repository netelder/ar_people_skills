class UserSkill < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :skill

  after_initialize :init

  def init
  	self.proficiency ||= 0
  end
  
end

# attributes	
# t.integer :proficiency
# t.references :user
# t.references :skill
# t.timestamps