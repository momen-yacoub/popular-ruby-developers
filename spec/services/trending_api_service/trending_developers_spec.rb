require "rails_helper"
require 'rest_client'

RSpec.describe TrendingApiService::TrendingDevelopers do


  describe "#initialize" do
    let(:language) { Faker::ProgrammingLanguage.name }
    let(:since) { Faker::Date.between(from: 8.years.ago, to: Date.today) }
    subject { described_class.new(language, since) }

    it "matches class language" do
      expect(subject.language).to eq(language)
    end
    it "matches class since" do
      expect(subject.since).to eq(since)
    end
    it "matches class request connection url" do
      expect(subject.conn.url_prefix.to_s).to eq("https://github-trending-api.now.sh/")
    end
  end

  describe "#list" do
    let(:language) { "ruby" }
    let(:since) { nil }
    subject { described_class.new(language, since) }

    context "for list trending developers request" do
      before(:each) do
        response = RestClient.get "https://github-trending-api.now.sh/developers?language=#{subject.language}"
        data = JSON.parse(response.body)
        @list_data = []
        data.each do |hash|
          params = ActionController::Parameters.new(hash)
          @list_data << params.permit("name", "username", "type", "avatar", "repo": ["name", "description", "url"])
        end
      end
      it "matches the language" do
        expect(subject.list).to eq(@list_data)
      end
    end

  end
end
