require 'spec_helper'

describe "Creating a filmroll" do

  it "creates a new filmroll with the 'Create Filmroll' button" do
    visit filmrolls_path
    click_link "Add New Filmroll"
    fill_in "Name", with: "A New Roll"
    click_button "Create Filmroll"

    expect(page).to have_content "A New Roll"
  end
  
end
