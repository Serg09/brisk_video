require 'rails_helper'

RSpec.describe "packages/edit", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      :hours => "9.99",
      :first_videographer => "MyString",
      :first_videographer_hours => 1,
      :second_videographer => "MyString",
      :second_videographer_hours => 1,
      :highlight_video => 1,
      :documentary_edit => 1,
      :published_dvds => 1,
      :published_bds => 1,
      :over_eight_hours => "9.99",
      :over_ten_hours => "9.99"
    ))
  end

  it "renders the edit package form" do
    render

    assert_select "form[action=?][method=?]", package_path(@package), "post" do

      assert_select "input#package_hours[name=?]", "package[hours]"

      assert_select "input#package_first_videographer[name=?]", "package[first_videographer]"

      assert_select "input#package_first_videographer_hours[name=?]", "package[first_videographer_hours]"

      assert_select "input#package_second_videographer[name=?]", "package[second_videographer]"

      assert_select "input#package_second_videographer_hours[name=?]", "package[second_videographer_hours]"

      assert_select "input#package_highlight_video[name=?]", "package[highlight_video]"

      assert_select "input#package_documentary_edit[name=?]", "package[documentary_edit]"

      assert_select "input#package_published_dvds[name=?]", "package[published_dvds]"

      assert_select "input#package_published_bds[name=?]", "package[published_bds]"

      assert_select "input#package_over_eight_hours[name=?]", "package[over_eight_hours]"

      assert_select "input#package_over_ten_hours[name=?]", "package[over_ten_hours]"
    end
  end
end
