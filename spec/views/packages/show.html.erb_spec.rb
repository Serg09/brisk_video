require 'rails_helper'

RSpec.describe "packages/show", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/First Videographer/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Second Videographer/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
