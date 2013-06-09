class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :user_skills do  |t|
      t.integer :proficiency
      t.references :user
      t.references :skill

      t.timestamps
    end 
  end
end
