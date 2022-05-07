require 'rails_helper'

RSpec.describe "Boards", type: :request do
  describe "GET /boards" do
    before(:each) do
      create(:board)
      create(:board)
      create(:board)
      get '/boards.json'
    end
    it 'returns 200 response' do
      expect(response).to have_http_status(200)
    end
    it 'returns an array containing current elements' do
      expect(Board.all.count).to eq(3)
      expect(json.count).to eq(3)
    end
  end

  describe "GET /boards/:id" do
    before(:each) do
      @board_1 = create(:board)
      get "/boards/#{@board_1.id}.json"
    end
    it 'returns 200 response' do
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /boards" do
    it 'returns 201 response and create a new Board' do
      headers = { 'ACCEPT' => 'application/json' }
      params = {
        board: {
          name: 'Slider 1',
          email: 'test@aasf.com',
          width: 4,
          height: 5,
          mines: 11
        }
      }
      expect { post '/boards', params: params, headers: headers }.to change { Board.count }.from(0).to(1)

      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(response).to have_http_status(:created)
    end
  end
end
