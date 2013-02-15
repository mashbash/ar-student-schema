require_relative '../config'

# this is where you should use an ActiveRecord migration to 

#have to check why we can't change classname bugbug
class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |table|
      table.string :first_name
      table.string :last_name
      table.string :email
      table.string :phone
    end  
    #can create many tables in here
  end  
    # HINT: checkout ActiveRecord::Migration.create_table

end
