require_relative '../config'

# this is where you should use an ActiveRecord migration to 

#have to check why we can't change classname bugbug
class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |table|
      table.column :first_name, :string
      table.column :last_name, :string
      table.column :gender, :string
      table.column :age, :integer
      table.column :birthday, :date
      table.column :email, :string
      table.column :phone, :string
      table.column :teacher_id, :integer
    end

    #can create many tables in here
  end  
    # HINT: checkout ActiveRecord::Migration.create_table

end
