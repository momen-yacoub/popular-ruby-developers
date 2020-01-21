require "faraday"

module TrendingApiService
  class TrendingDevelopers
    attr_reader :language, :since, :conn

    def initialize(language, since)
      @language = language
      @since = since
      set_request_connection
    end

    def list
      response = conn.get do |req|
        req.url '/developers'
        req.params['language'] = language unless language.nil?
        req.params['since'] = since unless since.nil?
      end
      data = JSON.parse(response.body)
      permited_parameters(data)
    end

    private

    def set_request_connection
      @conn = Faraday.new(:url => request_url) do |faraday|
        faraday.use Faraday::Response::RaiseError
        faraday.request  :url_encoded
        faraday.response :logger
        faraday.adapter  Faraday.default_adapter
      end
    end

    def request_url
      "https://github-trending-api.now.sh/"
    end

    def permited_parameters(data)
      new_data = []
      data.each do |hash|
        params = ActionController::Parameters.new(hash)
        new_data << trending_developers_list_parameters(params)
      end
      new_data
    end

    def trending_developers_list_parameters(params)
      params.permit("name", "username", "type", "avatar", "repo": ["name", "description", "url"])
    end
  end
end
