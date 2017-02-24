class Section < ApplicationRecord
  validates :course_id ,:student_id, :professor_id, presence:true
  belongs_to :student
  belongs_to :professor
  belongs_to :course
end
