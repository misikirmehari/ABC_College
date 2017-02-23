require 'rails_helper'

RSpec.describe "professors/edit", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do

      assert_select "input#professor_name[name=?]", "professor[name]"

      assert_select "input#professor_email[name=?]", "professor[email]"
    end
  end
end
