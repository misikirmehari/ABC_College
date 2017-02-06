require 'rails_helper'

RSpec.describe "professors/show", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :professor => "Professor",
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Professor/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
