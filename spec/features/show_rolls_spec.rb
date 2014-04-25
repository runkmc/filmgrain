require 'spec_helper'

describe "Showing individual rolls" do

  it "shows a roll's page" do
    roll = FactoryGirl.create :filmroll
    visit filmroll_url(roll)

    expect(page).to have_text roll.name
  end
  
end
