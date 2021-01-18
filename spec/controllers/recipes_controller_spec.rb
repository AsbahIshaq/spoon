require 'spec_helper'
require 'rails_helper'
RSpec.describe RecipesController do
  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'renders 404 for unknown id' do
      get :show, {format: :html, params: {id: 1}}
      expect(response.status).to eq 404
    end

    it 'renders show template', :vcr do
      result = Recipe.load_page(1, 2)
      get :show, {format: :html, params: {id: result.first.id}}
      expect(response).to render_template('show')
    end
  end
end