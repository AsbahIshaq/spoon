require 'rails_helper'

RSpec.describe 'List Recipes', type: :feature do
  scenario 'valid inputs', :vcr do
    recipes = Recipe.load_page(1, 2)
    recipe  = Recipe.find_recipe(recipes.first.id)
    expect(recipe).to be_a Recipe
  end
end