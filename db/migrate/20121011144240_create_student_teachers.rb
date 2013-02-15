require_relative '../config'

# this is where you should use an ActiveRecord migration to 

#have to check why we can't change classname bugbug
class CreateStudentTeachers < ActiveRecord::Migration
  def change
    create_table :student_teachers do |table|
      table.column :student_id, :integer
      table.column :teacher_id, :integer
    end

    #can create many tables in here
  end  
    # HINT: checkout ActiveRecord::Migration.create_table

end
