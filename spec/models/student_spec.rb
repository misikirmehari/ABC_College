require 'rails_helper'

RSpec.describe Student, type: :model do
  it {is_expected.to have_many :sections}
  it {is_expected.to have_many(:professors).through(:sections)}
end
