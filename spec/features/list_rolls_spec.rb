require 'spec_helper'

describe "Viewing the list of rolls" do

  it "Shows the filmrolls" do
    visit filmrolls_url

    expect(page).to have_text "3 Rolls"
    expect(page).to have_text "Roll 1"
    expect(page).to have_text "Roll 2"
    expect(page).to have_text "Roll 3"
  end
  
end
