require 'rails_helper'

RSpec.describe Section, type: :model do
  it { is_expected.to belong_to :student }
  it { is_expected.to belong_to :course }
  it { is_expected.to belong_to :professor }
end
