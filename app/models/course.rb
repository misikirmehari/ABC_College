class Course < ApplicationRecord
  validates :name, presence: true
  has_many :sections

  def self.per_page
    10
  end

end
