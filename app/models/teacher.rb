require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  attr_accessible :phone, :email, :first_name, :last_name

  has_many :students

  validates :email, :uniqueness => true
end
