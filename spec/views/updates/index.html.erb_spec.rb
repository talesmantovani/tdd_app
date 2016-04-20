require 'rails_helper'

RSpec.describe "updates/index", type: :view do
  before(:each) do
    assign(:updates, [
      Update.create!(
        :title => "Title",
        :caption => "MyText"
      ),
      Update.create!(
        :title => "Title",
        :caption => "MyText"
      )
    ])
  end

  it "renders a list of updates" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
