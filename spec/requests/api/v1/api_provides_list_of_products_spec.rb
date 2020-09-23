RSpec.describe Api::V1::ProductsController, type: :request do
  let(:product1) { create(:product) }
  let(:product2) { create(:product) }
  let(:product3) { create(:product) }
  let(:product4) { create(:product) }
  let(:product5) { create(:product) }
  
  describe 'GET /api/v1/products' do
    before do
      get '/api/v1/products'
    end

    it 'should return a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'should return a list of products' do
      expect(response_json['products'].count).to eq 5
    end
  end
end