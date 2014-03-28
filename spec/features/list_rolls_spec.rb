require 'spec_helper'

describe "Viewing the list of rolls" do

  it "Shows the filmrolls" do
    roll = FactoryGirl.create :filmroll
    visit filmrolls_url

    expect(page).to have_text roll.name
  end
  
end
