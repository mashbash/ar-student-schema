require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  attr_accessible :phone, :email, :first_name, :last_name

  has_many :student_teachers
  has_many :students, :through => :student_teachers

  validates :email, :uniqueness => true
end
