require 'rails_helper'

describe "the add product process" do
  it "gives an error when no name is entered" do
    visit '/products/new'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end
