require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :address => "Address",
        :date => "Date"
      ),
      User.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :name => "Name",
        :address => "Address",
        :date => "Date"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
