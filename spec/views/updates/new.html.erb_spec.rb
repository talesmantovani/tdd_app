require 'rails_helper'

RSpec.describe "updates/new", type: :view do
  before(:each) do
    assign(:update, Update.new(
      :title => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders new update form" do
    render

    assert_select "form[action=?][method=?]", updates_path, "post" do

      assert_select "input#update_title[name=?]", "update[title]"

      assert_select "textarea#update_caption[name=?]", "update[caption]"
    end
  end
end
