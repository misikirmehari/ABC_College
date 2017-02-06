class Professor < ApplicationRecord
  has_many :sections
  has_many :students , :through => :sections
end
