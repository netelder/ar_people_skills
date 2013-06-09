class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_skills
  has_many :skills, :through => :user_skills

  validates :name , :email, :presence => :true
  validates :email, :uniqueness => :true

  def set_proficiency_for(skill_object, proficiency)
  	skill_name = skill_object.name
  	skill_id = Skill.find_by_name(skill_name).id
  	userskill_id = UserSkill.where(:user_id => self.id, :skill_id => 
  		skill_id)
  	UserSkill.update(userskill_id, :proficiency => proficiency)
  end

  def proficiency_for(skill_object)
  	skill_name = skill_object.name
  	skill_id = Skill.find_by_name(skill_name).id
  	UserSkill.where(:user_id => self.id, :skill_id => skill_id).first.proficiency
  end

end

# attributes
# t.string :name
# t.string :email
# t.timestamps