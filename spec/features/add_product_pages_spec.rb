require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit '/'
    click_link 'New Product'
    fill_in 'Name', :with => 'SHMOOOOO'
    fill_in 'cost', :with => '33.33'
    click_on 'Submit'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'SHMOOOOO'
  end

  # it "gives an error when no name is entered" do
  #   visit new_product_path
  #   click_on 'Submit'
  #   expect(page).to have_content "Name can't be blank"
  # end
end
