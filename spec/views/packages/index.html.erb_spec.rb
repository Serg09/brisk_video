require 'rails_helper'

RSpec.describe "packages/index", type: :view do
  before(:each) do
    assign(:packages, [
      Package.create!(
        :hours => "9.99",
        :first_videographer => "First Videographer",
        :first_videographer_hours => 1,
        :second_videographer => "Second Videographer",
        :second_videographer_hours => 2,
        :highlight_video => 3,
        :documentary_edit => 4,
        :published_dvds => 5,
        :published_bds => 6,
        :over_eight_hours => "9.99",
        :over_ten_hours => "9.99"
      ),
      Package.create!(
        :hours => "9.99",
        :first_videographer => "First Videographer",
        :first_videographer_hours => 1,
        :second_videographer => "Second Videographer",
        :second_videographer_hours => 2,
        :highlight_video => 3,
        :documentary_edit => 4,
        :published_dvds => 5,
        :published_bds => 6,
        :over_eight_hours => "9.99",
        :over_ten_hours => "9.99"
      )
    ])
  end

  it "renders a list of packages" do
    pending
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "First Videographer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Second Videographer".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
