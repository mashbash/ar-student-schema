require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base

  belongs_to :tea

  validates :age, :numericality => {:greater_than => 4}
  validates :email, :uniqueness => true, :format => {
    :with => /\w+@\w+.\w{2,}/, :message => "Unacceptable format"}
  # validates :phone, :format => { :with => /\d{10,}[^\D]/, :message => "Unacceptable format"}
  validates :phone_format_cleanup, :length => {:minimum => 10}

  def name
    self.first_name + " " + self.last_name
  end

  def age
    #copied this from the spec file
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || 
          (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end  

#how is this being called?? seems to work but how
  def phone_format_cleanup
    #update phone in the db with the cleaned up version and only run if phone is not nil
    self.phone.gsub(/([-() ])/, '') if self.phone != nil
  end  

end




