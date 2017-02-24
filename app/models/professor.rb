class Professor < ApplicationRecord
  validates :name , :email , presence:true
  has_many :sections
  has_many :students , :through => :sections
end
