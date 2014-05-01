require 'spec_helper'

describe "editing a filmroll" do
  
  it "has an edit page" do
    roll = FactoryGirl.create :filmroll
    visit filmroll_path(roll)
    click_link "Edit"

    expect(find_field("Name").value).to eq(roll.name)
  end
end
