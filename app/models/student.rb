require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base

  validates :age, :numericality => {:greater_than => 4}
  validates :email, :uniqueness => true, :format => {
    :with => /\w+@\w+.\w{2,}/, :message => "Unacceptable format"}

  def name
    self.first_name + " " + self.last_name
  end

  def age
    #copied this from the spec file
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || 
          (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end  

end



# email validation:
# -email address must contain at least one @ and one .
# -at least 1 character  before @
# -at least 1 character between @ and .
# -at least 2 characters after the final .
# -email address must be unique

# age validation: 
# -students must be 5 years old
