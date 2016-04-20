require 'rails_helper'

RSpec.describe "updates/edit", type: :view do
  before(:each) do
    @update = assign(:update, Update.create!(
      :title => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders the edit update form" do
    render

    assert_select "form[action=?][method=?]", update_path(@update), "post" do

      assert_select "input#update_title[name=?]", "update[title]"

      assert_select "textarea#update_caption[name=?]", "update[caption]"
    end
  end
end
