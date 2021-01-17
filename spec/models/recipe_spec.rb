require 'spec_helper'
require 'rails_helper'

RSpec.describe Recipe do

  it "is valid with valid attributes", :vcr do
    result = Recipe.load_page(1, 2)
    expect(result).to be_a ::Contentful::Array
  end

  it "is valid with negative page number", :vcr do
    result = Recipe.load_page(-1, 2)
    expect(result).to be_a ::Contentful::Array
  end

  it "is valid with negative limit", :vcr do
    result = Recipe.load_page(1, -2)
    expect(result).to be_a ::Contentful::Array
  end

  it "follows limit", :vcr do
    result = Recipe.load_page(1, 2)
    expect(result.count).to be <= 2
  end

  it "handle invalid arguments", :vcr do
    result = Recipe.load_page('a', 'b')
    expect(result).to be_a ::Contentful::Array
  end
end