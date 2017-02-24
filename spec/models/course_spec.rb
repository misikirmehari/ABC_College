require 'rails_helper'

RSpec.describe Course, type: :model do
  it {is_expected.to have_many :sections}
  it { is_expected.to validate_presence_of(:name)}

end

