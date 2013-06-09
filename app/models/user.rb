class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_skills
  has_many :skills, :through => :user_skills

  def set_proficiency_for(skill_name, proficiency)
  	skill_id = Skill.find_by_name(skill_name).id
  	userskill_id = UserSkill.where(:user_id => self.id, :skill_id => 
  		skill_id)
  	UserSkill.update(userskill_id, :proficiency => proficiency)
  end

  def proficiency_for(skill_name)
  	skill_id = Skill.find_by_name(skill_name).id
  	UserSkill.where(:user_id => self.id, :skill_id => skill_id).first.proficiency
  end

end
