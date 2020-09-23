RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:product) do
    5.times do
      create(:product)
    end
  end
  
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