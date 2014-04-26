require 'spec_helper'

describe "Filmroll navigation" do
  it "allows navigation from the listing page to the detail page" do
    roll = FactoryGirl.create :filmroll
    visit filmrolls_path
    click_link roll.name

    expect(current_path).to eq(filmroll_path(roll))
  end

  it "allows navigation from the detail page to the listing page" do
    roll = FactoryGirl.create :filmroll
    visit filmroll_path roll
    click_link "All Filmrolls"

    expect(current_path).to eq(filmrolls_path)
  end
  
end
