require 'spec_helper'

describe "Deleting a filmroll" do
  
  it "destroys a filmroll and redirects to the filmroll index" do
    roll = FactoryGirl.create :filmroll
    visit filmroll_path(roll)
    click_link "Delete"

    expect(page).not_to have_content roll.name
  end
end
