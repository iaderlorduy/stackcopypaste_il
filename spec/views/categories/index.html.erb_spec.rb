require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :title => "Title",
        :presence => false
      ),
      Category.create!(
        :title => "Title",
        :presence => false
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
