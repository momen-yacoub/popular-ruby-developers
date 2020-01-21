Rails.application.routes.draw do
  scope 'api' do
    get 'trending_developers/list'
  end
end
