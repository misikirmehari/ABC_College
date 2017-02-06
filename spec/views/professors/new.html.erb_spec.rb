require 'rails_helper'

RSpec.describe "professors/new", type: :view do
  before(:each) do
    assign(:professor, Professor.new(
      :professor => "MyString",
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new professor form" do
    render

    assert_select "form[action=?][method=?]", professors_path, "post" do

      assert_select "input#professor_professor[name=?]", "professor[professor]"

      assert_select "input#professor_name[name=?]", "professor[name]"

      assert_select "input#professor_email[name=?]", "professor[email]"
    end
  end
end
