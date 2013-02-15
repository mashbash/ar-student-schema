require_relative '../../db/config'
require_relative 'teacher.rb'
require_relative 'student.rb'
require_relative 'student_teacher.rb'

## Driver code
Teacher.create(:first_name => 'Nigel', :last_name => 'Nakano', :email=> 'nigel@nakano.com', :phone=> '111-111-1111')
Teacher.create(:first_name => "Omar", :last_name => "Rayward", :email=> 'omar@rayward.com', :phone=> '222-222-2222')
Teacher.create(:first_name => "Suzanne", :last_name => "Parker", :email=> 'suz@parker.com', :phone=> '333-333-3333')
Teacher.create(:first_name => "Summer", :last_name => "Light", :email=> 'sum@light.com', :phone=> '444-444-4444')
Teacher.create(:first_name => "Tony", :last_name => "Blair", :email=> 'tony@blair.com', :phone=> '555-555-5555')
Teacher.create(:first_name => "Bob", :last_name => "Hope", :email=> 'bob@hope.com', :phone=> '666-666-6666')
Teacher.create(:first_name => "Chris", :last_name => "Hunter", :email=> 'chris@hunter.com', :phone=> '777-777-7777')
Teacher.create(:first_name => "Angel", :last_name => "Kasey", :email=> 'angel@kasey.com', :phone=> '888-888-8888')
Teacher.create(:first_name => "Ramon", :last_name => "Jumper", :email=> 'ramon@jumper.com', :phone=> '999-999-9999')


# my_teacher = Teacher.where(:first_name => "Angel").first.update_attribute(:email, "angel@kasey.com")

# my_teacher.phone => "123"
# my_teacher.save!
# update_attributes(:phone => '000-000-0000')

# Teacher.select(* from teachers where email in (email))

# Teacher.select("email, count(email) as quantity").group(:email).having("quantity > 1")


# Code that will give all the students with teacher_id 1
# p Student.select([:first_name, :last_name]).where(:teacher_id => 1)

# # Code that will give the id of his/her teacher
# p Student.select(:teacher_id).where(:first_name => 'Jeff')

## Polpulating the new table Student Teachers

# Student.all.each do |student|
#   num = (1..Teacher.all.size).to_a.shuffle
#   3.times do
#     StudentTeacher.create(:student_id => student.id, :teacher_id => num.pop)
#   end
# end


