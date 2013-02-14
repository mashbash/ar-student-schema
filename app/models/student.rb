require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base

  
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
