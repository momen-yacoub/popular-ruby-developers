class TrendingDevelopersController < ApplicationController

  def list
    begin
      data = TrendingApiService::TrendingDevelopers.new('ruby', nil).list
      render json: { message: 'Success', list: data }, status: :ok
    rescue => e
      render json: {
        message: 'Failed',
        reasons: e,
      }, status: :unprocessable_entity
    end
  end
end
