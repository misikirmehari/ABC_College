class Student < ApplicationRecord
  validates :name , :email , presence:true
  has_many :sections
  has_many :professors , :through => :sections

end
