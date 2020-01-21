require "rails_helper"

RSpec.describe TrendingDevelopersController, type: :controller do

  describe 'GET "list"' do

    context "when using github trending api service" do
      it "responds with 200" do
        get :list
        expect(response.status).to eq 200
      end

      it "responds with message Success" do
        get :list
        expect(JSON.parse(response.body)["message"]).to eq('Success')
      end

      it "responds with data like tredinging developers service" do
        get :list
        expect(JSON.parse(response.body)["list"]).to eq(TrendingApiService::TrendingDevelopers.new('ruby', nil).list)
      end
    end
  end

end
