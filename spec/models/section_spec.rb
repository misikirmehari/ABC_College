require 'rails_helper'

RSpec.describe Section, type: :model do
  it {is_expected.to validate_presence_of(:course_id)}
  it {is_expected.to validate_presence_of(:student_id)}
  it {is_expected.to validate_presence_of(:professor_id)}
it {is_expected.to belong_to :student}
it {is_expected.to belong_to :professor}
it {is_expected.to belong_to :course}
end
