require 'spec_helper'

describe "editing a filmroll" do
  
  it "has an edit page" do
    roll = FactoryGirl.create :filmroll
    visit filmroll_path(roll)
    click_link "Edit"

    expect(find_field("Name").value).to eq(roll.name)
  end

  it "can update a filmroll's attributes" do
    roll = FactoryGirl.create :filmroll
    new_notes = "Accidentally dropped in beer. Pictures OK."
    visit edit_filmroll_path(roll)
    fill_in "Development notes", with: new_notes
    click_button "Update Filmroll"

    expect(page).to have_text(new_notes)
  end
end
