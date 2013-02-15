require_relative '../../db/config'

class StudentTeachers < ActiveRecord::Base

  belongs_to :student
  belongs_to :teacher

end
